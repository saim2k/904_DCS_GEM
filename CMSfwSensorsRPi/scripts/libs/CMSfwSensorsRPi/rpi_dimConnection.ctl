void cmsrpi_configureDIM(dyn_string& exc){
  
  string configDIM="dimRpi";
  string machineName=getSystemName();

  
//-----------------------------------------------  
  //BMP280 - current QC8 pressure measurement - 2017.05.12.
  //DIM services names
  string DIM_QC8_programStartedAt = "904QC8_BMP280/Program_started_at";
  string DIM_QC8_uptime = "904QC8_BMP280/Uptime";
  string DIM_QC8_measurementDelayValue = "904QC8_BMP280/Measurement_Delay_Value_ms";

  string DIM_QC8_pressureHPa = "904QC8_BMP280/Pressure_hPa";
  string DIM_QC8_temperature = "904QC8_BMP280/Temperature_degC";
  string DIM_QC8_dewpoint = "904QC8_BMP280/Dewpoint_degC";
  string DIM_QC8_relHumidity = "904QC8_BMP280/Relative_Humidity_percent";
  string DIM_QC8_height = "904QC8_BMP280/Height_m";
  
  string DIM_QC8_readoutTimePressure = "904QC8_BMP280/Pressure_Readout_Time";
  string DIM_QC8_readoutTimeTemperature = "904QC8_BMP280/Temperature_Readout_Time";
  string DIM_QC8_readoutTimeDewPoint = "904QC8_BMP280/DewPoint_Readout_Time";
  string DIM_QC8_readoutTimeRelHumidity = "904QC8_BMP280/RelHumidity_Readout_Time";

  string DIM_QC8_DeadbandValuePressure = "904QC8_BMP280/Pressure_Deadband_Value_hPa";
  string DIM_QC8_DeadbandValueTemperature = "904QC8_BMP280/Temperature_Deadband_Value_degC";
  string DIM_QC8_DeadbandValueDewPoint = "904QC8_BMP280/DewPoint_Deadband_Value_degC";
  string DIM_QC8_DeadbandValueRelHumidity = "904QC8_BMP280/RelHumidity_Deadband_Value_percent";

  string DIM_QC8_LockReadOutTogetherValue = "904QC8_BMP280/Lock_readouts_together_Value";
  
  DebugN("DIM_QC8_measurementDelayValue", DIM_QC8_measurementDelayValue);
  DebugN("DIM_QC8_programStartedAt", DIM_QC8_programStartedAt);
  DebugN("DIM_QC8_uptime", DIM_QC8_uptime);
  
  DebugN("DIM_QC8_pressureHPa", DIM_QC8_pressureHPa);
  DebugN("DIM_QC8_temperature", DIM_QC8_temperature);
  DebugN("DIM_QC8_dewpoint", DIM_QC8_dewpoint);
  DebugN("DIM_QC8_relHumidity", DIM_QC8_relHumidity);
  DebugN("DIM_QC8_height", DIM_QC8_height);
  
  DebugN("DIM_QC8_readoutTimePressure", DIM_QC8_readoutTimePressure);
  DebugN("DIM_QC8_readoutTimeTemperature", DIM_QC8_readoutTimeTemperature);
  DebugN("DIM_QC8_readoutTimeDewPoint", DIM_QC8_readoutTimeDewPoint);
  DebugN("DIM_QC8_readoutTimeRelHumidity", DIM_QC8_readoutTimeRelHumidity);
    
  DebugN("DIM_QC8_DeadbandValuePressure", DIM_QC8_DeadbandValuePressure);
  DebugN("DIM_QC8_DeadbandValueTemperature", DIM_QC8_DeadbandValueTemperature);
  DebugN("DIM_QC8_DeadbandValueDewPoint", DIM_QC8_DeadbandValueDewPoint);
  DebugN("DIM_QC8_DeadbandValueRelHumidity", DIM_QC8_DeadbandValueRelHumidity);

  DebugN("DIM_QC8_LockReadOutTogetherValue", DIM_QC8_LockReadOutTogetherValue);
  
  //DIM commands
  string DIM_QC8_SetDeadbandPressure = "904QC8_BMP280/Pressure_DeadBand_hPa";
  string DIM_QC8_SetDeadbandTemperature = "904QC8_BMP280/Temperature_DeadBand_degC";
  string DIM_QC8_SetDeadbandDewPoint = "904QC8_BMP280/DewPoint_DeadBand_degC";
  string DIM_QC8_SetDeadbandRelHumidity = "904QC8_BMP280/Relative_Humidity_DeadBand_percent";
  string DIM_QC8_SetMeasDelay = "904QC8_BMP280/Measurement_Delay_ms";
  string DIM_QC8_SetDeadbandLocking = "904QC8_BMP280/DeadBand_Locking";

  DebugN("DIM_QC8_SetDeadbandPressure", DIM_QC8_SetDeadbandPressure);
  DebugN("DIM_QC8_SetDeadbandTemperature", DIM_QC8_SetDeadbandTemperature);
  DebugN("DIM_QC8_SetDeadbandDewPoint", DIM_QC8_SetDeadbandDewPoint);
  DebugN("DIM_QC8_SetDeadbandRelHumidity", DIM_QC8_SetDeadbandRelHumidity);
  DebugN("DIM_QC8_SetMeasDelay", DIM_QC8_SetMeasDelay);
  DebugN("DIM_QC8_SetDeadbandLocking", DIM_QC8_SetDeadbandLocking);
  
  //Datapoints
  //Subscriptions
  string dpQC8ProgramStartedAt = machineName+"rpiControlPressureQC8.programStartedAt";
  string dpQC8UpTime = machineName+"rpiControlPressureQC8.upTime";
  string dpQC8MeasurementDelayValue = machineName+"rpiControlPressureQC8.measDelayValue_ms";

  string dpQC8PressureHPa = machineName+"rpiPressureQC8.pressureValue_hPa";
  string dpQC8Temperature = machineName+"rpiPressureQC8.temperatureValue_degC";
  string dpQC8Dewpoint = machineName+"rpiPressureQC8.dewpointValue_degC";
  string dpQC8RelHumidity = machineName+"rpiPressureQC8.relHumidityValue_percent";
  string dpQC8Height = machineName+"rpiPressureQC8.heightValue_m";

  string dpQC8pressureDeadbandValue = machineName+"rpiPressureQC8.deadband.pressureDeadband";
  string dpQC8tempDeadbandValue = machineName+"rpiPressureQC8.deadband.temperatureDeadband";
  string dpQC8dewpointDeadbandValue = machineName+"rpiPressureQC8.deadband.dewpointDeadband";
  string dpQC8relHumDeadbandValue = machineName+"rpiPressureQC8.deadband.relHumidityDeadband";

  string dpQC8pressureReadoutTime = machineName+"rpiPressureQC8.readoutTime.pressureReadoutTime";
  string dpQC8temperatureReadoutTime = machineName+"rpiPressureQC8.readoutTime.temperatureReadoutTime";
  string dpQC8dewpointReadoutTime = machineName+"rpiPressureQC8.readoutTime.dewpointReadoutTime";
  string dpQC8relHumidityReadoutTime = machineName+"rpiPressureQC8.readoutTime.relHumidityReadoutTime";
      
  string dpQC8lockReadoutTogetherValue = machineName+"rpiPressureQC8.lockReadoutTogetherValue";
   
  
  DebugN("dpQC8ProgramStartedAt", dpQC8ProgramStartedAt);
  DebugN("dpQC8MeasurementDelayValue", dpQC8MeasurementDelayValue);
  DebugN("dpQC8UpTime", dpQC8UpTime);
  
  DebugN("dpQC8PressureHPa", dpQC8PressureHPa);
  DebugN("dpQC8Temperature", dpQC8Temperature);
  DebugN("dpQC8Dewpoint", dpQC8Dewpoint);
  DebugN("dpQC8RelHumidity", dpQC8RelHumidity);
  DebugN("dpQC8Height", dpQC8Height);
  
  DebugN("dpQC8pressureDeadbandValue", dpQC8pressureDeadbandValue);
  DebugN("dpQC8tempDeadbandValue", dpQC8tempDeadbandValue);
  DebugN("dpQC8dewpointDeadbandValue", dpQC8dewpointDeadbandValue);
  DebugN("dpQC8relHumDeadbandValue", dpQC8relHumDeadbandValue);
  
  DebugN("dpQC8pressureReadoutTime", dpQC8pressureReadoutTime);
  DebugN("dpQC8temperatureReadoutTime", dpQC8temperatureReadoutTime);
  DebugN("dpQC8dewpointReadoutTime", dpQC8dewpointReadoutTime);
  DebugN("dpQC8relHumidityReadoutTime", dpQC8relHumidityReadoutTime);
  
  DebugN("dpQC8lockReadoutTogetherValue", dpQC8lockReadoutTogetherValue);


  //Datapoint for command
  string dpQC8SetMeasDelay = machineName+"rpiControlPressureQC8.setMeasDelay_ms";   
  string dpQC8SetDeadbandLocking = machineName+"rpiControlPressureQC8.setDeadbandLocking";   
  
  string dpQC8SetPressureDeadband = machineName+"rpiControlPressureQC8.setDeadband.setDeadbandPressure_hPa";
  string dpQC8SetTemperatureDeadband = machineName+"rpiControlPressureQC8.setDeadband.setDeadbandTemperature_degC";
  string dpQC8SetDewpointDeadband = machineName+"rpiControlPressureQC8.setDeadband.setDeadbandDewpoint_degC";
  string dpQC8SetRelHumidityDeadband = machineName+"rpiControlPressureQC8.setDeadband.setDeadbandRelHumidity_percent";

  
  DebugN("dpQC8SetMeasDelay", dpQC8SetMeasDelay);
  DebugN("dpQC8SetDeadbandLocking", dpQC8SetDeadbandLocking);

  DebugN("dpQC8SetPressureDeadband", dpQC8SetPressureDeadband);
  DebugN("dpQC8SetTemperatureDeadband", dpQC8SetTemperatureDeadband);
  DebugN("dpQC8SetDewpointDeadband", dpQC8SetDewpointDeadband);
  DebugN("dpQC8SetRelHumidityDeadband", dpQC8SetRelHumidityDeadband);
  
  DebugN("QC8 Pressure sensor DONE");
  
 
  //Init: Delete config then create config
  fwDim_deleteConfig(configDIM);
  fwDim_createConfig(configDIM);
  
  
//-----------------------------------------------  
  //BMP280 - current QC8 pressure measurement - 2017.05.12.
  //subscriptions
  subscribe(configDIM, DIM_QC8_programStartedAt, dpQC8ProgramStartedAt);
  subscribe(configDIM, DIM_QC8_uptime, dpQC8UpTime);
  subscribe(configDIM, DIM_QC8_measurementDelayValue, dpQC8MeasurementDelayValue);

  subscribe(configDIM, DIM_QC8_pressureHPa, dpQC8PressureHPa);
  subscribe(configDIM, DIM_QC8_temperature, dpQC8Temperature);
  subscribe(configDIM, DIM_QC8_dewpoint, dpQC8Dewpoint);
  subscribe(configDIM, DIM_QC8_relHumidity, dpQC8RelHumidity);
  subscribe(configDIM, DIM_QC8_height, dpQC8Height);

  subscribe(configDIM, DIM_QC8_DeadbandValuePressure, dpQC8pressureDeadbandValue);
  subscribe(configDIM, DIM_QC8_DeadbandValueTemperature, dpQC8tempDeadbandValue);
  subscribe(configDIM, DIM_QC8_DeadbandValueDewPoint, dpQC8dewpointDeadbandValue);
  subscribe(configDIM, DIM_QC8_DeadbandValueRelHumidity, dpQC8relHumDeadbandValue);

  subscribe(configDIM, DIM_QC8_readoutTimePressure, dpQC8pressureReadoutTime);
  subscribe(configDIM, DIM_QC8_readoutTimeTemperature, dpQC8temperatureReadoutTime);
  subscribe(configDIM, DIM_QC8_readoutTimeDewPoint, dpQC8dewpointReadoutTime);
  subscribe(configDIM, DIM_QC8_readoutTimeRelHumidity, dpQC8relHumidityReadoutTime);

  subscribe(configDIM, DIM_QC8_LockReadOutTogetherValue, dpQC8lockReadoutTogetherValue);  
  
  //commands
  subscribeCMD(configDIM, DIM_QC8_SetMeasDelay, dpQC8SetMeasDelay);
  subscribeCMD(configDIM, DIM_QC8_SetDeadbandLocking, dpQC8SetDeadbandLocking);

  subscribeCMD(configDIM, DIM_QC8_SetDeadbandPressure, dpQC8SetPressureDeadband);
  subscribeCMD(configDIM, DIM_QC8_SetDeadbandTemperature, dpQC8SetTemperatureDeadband);
  subscribeCMD(configDIM, DIM_QC8_SetDeadbandDewPoint, dpQC8SetDewpointDeadband);
  subscribeCMD(configDIM, DIM_QC8_SetDeadbandRelHumidity, dpQC8SetRelHumidityDeadband);
   
  DebugN("QC8 Pressure sensor DIM subscription DONE");
    
}
void subscribe(string config, string serviceName, string dpName){
/*@param config : To which config should this service be added 
  @param servicName : DIM Service Name 
  @param dpName : Data point (or DP element) that receives the DIM service contents 
  @param default_value (optional): The default value if the service is not available or empty string (default) 
  @param timeout (optional): The time interval in seconds for periodic reception - 0 for on change (default) 
  @param flag (optional): quality and time-stamp flag - 1 for quality (default), 2 for time-stamp, 3 for both
  @param immediate_update (optional): 1 means update value when first connected (default)
  @param save_now (optional): 1 means save DimConfig immediately, 0 means optimize, i.e. wait to see if more changes comming (default)
*/
  fwDim_subscribeService(config, serviceName, dpName, "", 0, 1, 1, 1);
}
void subscribeMany(string config, dyn_string serviceName, dyn_string dpName){
/*    @param config : To which config should these services be added 
      @param service_names : List of DIM Service Names 
      @param dp_names : Data points (or DP elements) that receives the DIM service contents 
*/  
  fwDim_subscribeServices(config, serviceName, dpName);
}
void subscribeCMD(string config, string serviceName, string dpName){
/*    @param config : To which config should this command be added 
      @param service_name : DIM Command Name 
      @param dp_name : Data point (or DP element) that sends the DIM command when modified 
      @param save_now (optional): 1 means save DimConfig immediately, 0 means optimize, i.e. wait to see if more changes comming (default)
*/
  fwDim_subscribeCommand(config, serviceName, dpName, 1);
}
