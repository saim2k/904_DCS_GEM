void cmsrpi_configureDIM(dyn_string& exc){
  
  string configDIM="dimRpi";
  string machineName=getSystemName();

//-----------------------------------------------  
  //BMP280 - current UXC V2 pressure measurement - 2018.07.29.
  //DIM services names
  string DIM_UXC_2_programStartedAt = "UXCX4Nn_BMP280/Program_started_at";
  string DIM_UXC_2_uptime = "UXCX4Nn_BMP280/Uptime";
  string DIM_UXC_2_measurementDelayValue = "UXCX4Nn_BMP280/Measurement_Delay_Value_ms";

  string DIM_UXC_2_pressureHPa = "UXCX4Nn_BMP280/Pressure_hPa";
  string DIM_UXC_2_temperature = "UXCX4Nn_BMP280/Temperature_degC";
  string DIM_UXC_2_dewpoint = "UXCX4Nn_BMP280/Dewpoint_degC";
  string DIM_UXC_2_relHumidity = "UXCX4Nn_BMP280/Relative_Humidity_percent";
  string DIM_UXC_2_height = "UXCX4Nn_BMP280/Height_m";
  
  string DIM_UXC_2_readoutTimePressure = "UXCX4Nn_BMP280/Pressure_Readout_Time";
  string DIM_UXC_2_readoutTimeTemperature = "UXCX4Nn_BMP280/Temperature_Readout_Time";
  string DIM_UXC_2_readoutTimeDewPoint = "UXCX4Nn_BMP280/DewPoint_Readout_Time";
  string DIM_UXC_2_readoutTimeRelHumidity = "UXCX4Nn_BMP280/RelHumidity_Readout_Time";

  string DIM_UXC_2_DeadbandValuePressure = "UXCX4Nn_BMP280/Pressure_Deadband_Value_hPa";
  string DIM_UXC_2_DeadbandValueTemperature = "UXCX4Nn_BMP280/Temperature_Deadband_Value_degC";
  string DIM_UXC_2_DeadbandValueDewPoint = "UXCX4Nn_BMP280/DewPoint_Deadband_Value_degC";
  string DIM_UXC_2_DeadbandValueRelHumidity = "UXCX4Nn_BMP280/RelHumidity_Deadband_Value_percent";

  string DIM_UXC_2_LockReadOutTogetherValue = "UXCX4Nn_BMP280/Lock_readouts_together_Value";
  
  DebugN("DIM_UXC_2_measurementDelayValue", DIM_UXC_2_measurementDelayValue);
  DebugN("DIM_UXC_2_programStartedAt", DIM_UXC_2_programStartedAt);
  DebugN("DIM_UXC_2_uptime", DIM_UXC_2_uptime);
  
  DebugN("DIM_UXC_2_pressureHPa", DIM_UXC_2_pressureHPa);
  DebugN("DIM_UXC_2_temperature", DIM_UXC_2_temperature);
  DebugN("DIM_UXC_2_dewpoint", DIM_UXC_2_dewpoint);
  DebugN("DIM_UXC_2_relHumidity", DIM_UXC_2_relHumidity);
  DebugN("DIM_UXC_2_height", DIM_UXC_2_height);
  
  DebugN("DIM_UXC_2_readoutTimePressure", DIM_UXC_2_readoutTimePressure);
  DebugN("DIM_UXC_2_readoutTimeTemperature", DIM_UXC_2_readoutTimeTemperature);
  DebugN("DIM_UXC_2_readoutTimeDewPoint", DIM_UXC_2_readoutTimeDewPoint);
  DebugN("DIM_UXC_2_readoutTimeRelHumidity", DIM_UXC_2_readoutTimeRelHumidity);
    
  DebugN("DIM_UXC_2_DeadbandValuePressure", DIM_UXC_2_DeadbandValuePressure);
  DebugN("DIM_UXC_2_DeadbandValueTemperature", DIM_UXC_2_DeadbandValueTemperature);
  DebugN("DIM_UXC_2_DeadbandValueDewPoint", DIM_UXC_2_DeadbandValueDewPoint);
  DebugN("DIM_UXC_2_DeadbandValueRelHumidity", DIM_UXC_2_DeadbandValueRelHumidity);

  DebugN("DIM_UXC_2_LockReadOutTogetherValue", DIM_UXC_2_LockReadOutTogetherValue);
  
  //DIM commands
  string DIM_UXC_2_SetDeadbandPressure = "UXCX4Nn_BMP280/Pressure_DeadBand_hPa";
  string DIM_UXC_2_SetDeadbandTemperature = "UXCX4Nn_BMP280/Temperature_DeadBand_degC";
  string DIM_UXC_2_SetDeadbandDewPoint = "UXCX4Nn_BMP280/DewPoint_DeadBand_degC";
  string DIM_UXC_2_SetDeadbandRelHumidity = "UXCX4Nn_BMP280/Relative_Humidity_DeadBand_percent";
  string DIM_UXC_2_SetMeasDelay = "UXCX4Nn_BMP280/Measurement_Delay_ms";
  string DIM_UXC_2_SetDeadbandLocking = "UXCX4Nn_BMP280/DeadBand_Locking";

  DebugN("DIM_UXC_2_SetDeadbandPressure", DIM_UXC_2_SetDeadbandPressure);
  DebugN("DIM_UXC_2_SetDeadbandTemperature", DIM_UXC_2_SetDeadbandTemperature);
  DebugN("DIM_UXC_2_SetDeadbandDewPoint", DIM_UXC_2_SetDeadbandDewPoint);
  DebugN("DIM_UXC_2_SetDeadbandRelHumidity", DIM_UXC_2_SetDeadbandRelHumidity);
  DebugN("DIM_UXC_2_SetMeasDelay", DIM_UXC_2_SetMeasDelay);
  DebugN("DIM_UXC_2_SetDeadbandLocking", DIM_UXC_2_SetDeadbandLocking);
  
  //Datapoints
  //Subscriptions
  string dpUXC_2ProgramStartedAt = machineName+"rpiControlPressureUXC_2.programStartedAt";
  string dpUXC_2UpTime = machineName+"rpiControlPressureUXC_2.upTime";
  string dpUXC_2MeasurementDelayValue = machineName+"rpiControlPressureUXC_2.measDelayValue_ms";

  string dpUXC_2PressureHPa = machineName+"rpiPressureUXC_2.pressureValue_hPa";
  string dpUXC_2Temperature = machineName+"rpiPressureUXC_2.temperatureValue_degC";
  string dpUXC_2Dewpoint = machineName+"rpiPressureUXC_2.dewpointValue_degC";
  string dpUXC_2RelHumidity = machineName+"rpiPressureUXC_2.relHumidityValue_percent";
  string dpUXC_2Height = machineName+"rpiPressureUXC_2.heightValue_m";

  string dpUXC_2pressureDeadbandValue = machineName+"rpiPressureUXC_2.deadband.pressureDeadband";
  string dpUXC_2tempDeadbandValue = machineName+"rpiPressureUXC_2.deadband.temperatureDeadband";
  string dpUXC_2dewpointDeadbandValue = machineName+"rpiPressureUXC_2.deadband.dewpointDeadband";
  string dpUXC_2relHumDeadbandValue = machineName+"rpiPressureUXC_2.deadband.relHumidityDeadband";

  string dpUXC_2pressureReadoutTime = machineName+"rpiPressureUXC_2.readoutTime.pressureReadoutTime";
  string dpUXC_2temperatureReadoutTime = machineName+"rpiPressureUXC_2.readoutTime.temperatureReadoutTime";
  string dpUXC_2dewpointReadoutTime = machineName+"rpiPressureUXC_2.readoutTime.dewpointReadoutTime";
  string dpUXC_2relHumidityReadoutTime = machineName+"rpiPressureUXC_2.readoutTime.relHumidityReadoutTime";
      
  string dpUXC_2lockReadoutTogetherValue = machineName+"rpiPressureUXC_2.lockReadoutTogetherValue";
   
  
  DebugN("dpUXC_2ProgramStartedAt", dpUXC_2ProgramStartedAt);
  DebugN("dpUXC_2MeasurementDelayValue", dpUXC_2MeasurementDelayValue);
  DebugN("dpUXC_2UpTime", dpUXC_2UpTime);
  
  DebugN("dpUXC_2PressureHPa", dpUXC_2PressureHPa);
  DebugN("dpUXC_2Temperature", dpUXC_2Temperature);
  DebugN("dpUXC_2Dewpoint", dpUXC_2Dewpoint);
  DebugN("dpUXC_2RelHumidity", dpUXC_2RelHumidity);
  DebugN("dpUXC_2Height", dpUXC_2Height);
  
  DebugN("dpUXC_2pressureDeadbandValue", dpUXC_2pressureDeadbandValue);
  DebugN("dpUXC_2tempDeadbandValue", dpUXC_2tempDeadbandValue);
  DebugN("dpUXC_2dewpointDeadbandValue", dpUXC_2dewpointDeadbandValue);
  DebugN("dpUXC_2relHumDeadbandValue", dpUXC_2relHumDeadbandValue);
  
  DebugN("dpUXC_2pressureReadoutTime", dpUXC_2pressureReadoutTime);
  DebugN("dpUXC_2temperatureReadoutTime", dpUXC_2temperatureReadoutTime);
  DebugN("dpUXC_2dewpointReadoutTime", dpUXC_2dewpointReadoutTime);
  DebugN("dpUXC_2relHumidityReadoutTime", dpUXC_2relHumidityReadoutTime);
  
  DebugN("dpUXC_2lockReadoutTogetherValue", dpUXC_2lockReadoutTogetherValue);


  //Datapoint for command
  string dpUXC_2SetMeasDelay = machineName+"rpiControlPressureUXC_2.setMeasDelay_ms";   
  string dpUXC_2SetDeadbandLocking = machineName+"rpiControlPressureUXC_2.setDeadbandLocking";   
  
  string dpUXC_2SetPressureDeadband = machineName+"rpiControlPressureUXC_2.setDeadband.setDeadbandPressure_hPa";
  string dpUXC_2SetTemperatureDeadband = machineName+"rpiControlPressureUXC_2.setDeadband.setDeadbandTemperature_degC";
  string dpUXC_2SetDewpointDeadband = machineName+"rpiControlPressureUXC_2.setDeadband.setDeadbandDewpoint_degC";
  string dpUXC_2SetRelHumidityDeadband = machineName+"rpiControlPressureUXC_2.setDeadband.setDeadbandRelHumidity_percent";

  
  DebugN("dpUXC_2SetMeasDelay", dpUXC_2SetMeasDelay);
  DebugN("dpUXC_2SetDeadbandLocking", dpUXC_2SetDeadbandLocking);

  DebugN("dpUXC_2SetPressureDeadband", dpUXC_2SetPressureDeadband);
  DebugN("dpUXC_2SetTemperatureDeadband", dpUXC_2SetTemperatureDeadband);
  DebugN("dpUXC_2SetDewpointDeadband", dpUXC_2SetDewpointDeadband);
  DebugN("dpUXC_2SetRelHumidityDeadband", dpUXC_2SetRelHumidityDeadband);
  
  DebugN("UXC V2 Pressure sensor DONE");
  
  
  
//-----------------------------------------------  
  //BMP280 - current MilliQan pressure measurement - 2018.04.26.
  //DIM services names
  string DIM_MilliQan_programStartedAt = "MILLIQAN_BMP280/Program_started_at";
  string DIM_MilliQan_uptime = "MILLIQAN_BMP280/Uptime";
  string DIM_MilliQan_measurementDelayValue = "MILLIQAN_BMP280/Measurement_Delay_Value_ms";

  string DIM_MilliQan_pressureHPa = "MILLIQAN_BMP280/Pressure_hPa";
  string DIM_MilliQan_temperature = "MILLIQAN_BMP280/Temperature_degC";
  string DIM_MilliQan_dewpoint = "MILLIQAN_BMP280/Dewpoint_degC";
  string DIM_MilliQan_relHumidity = "MILLIQAN_BMP280/Relative_Humidity_percent";
  string DIM_MilliQan_height = "MILLIQAN_BMP280/Height_m";
  
  string DIM_MilliQan_readoutTimePressure = "MILLIQAN_BMP280/Pressure_Readout_Time";
  string DIM_MilliQan_readoutTimeTemperature = "MILLIQAN_BMP280/Temperature_Readout_Time";
  string DIM_MilliQan_readoutTimeDewPoint = "MILLIQAN_BMP280/DewPoint_Readout_Time";
  string DIM_MilliQan_readoutTimeRelHumidity = "MILLIQAN_BMP280/RelHumidity_Readout_Time";

  string DIM_MilliQan_DeadbandValuePressure = "MILLIQAN_BMP280/Pressure_Deadband_Value_hPa";
  string DIM_MilliQan_DeadbandValueTemperature = "MILLIQAN_BMP280/Temperature_Deadband_Value_degC";
  string DIM_MilliQan_DeadbandValueDewPoint = "MILLIQAN_BMP280/DewPoint_Deadband_Value_degC";
  string DIM_MilliQan_DeadbandValueRelHumidity = "MILLIQAN_BMP280/RelHumidity_Deadband_Value_percent";

  string DIM_MilliQan_LockReadOutTogetherValue = "MILLIQAN_BMP280/Lock_readouts_together_Value";
  
  DebugN("DIM_MilliQan_measurementDelayValue", DIM_MilliQan_measurementDelayValue);
  DebugN("DIM_MilliQan_programStartedAt", DIM_MilliQan_programStartedAt);
  DebugN("DIM_MilliQan_uptime", DIM_MilliQan_uptime);
  
  DebugN("DIM_MilliQan_pressureHPa", DIM_MilliQan_pressureHPa);
  DebugN("DIM_MilliQan_temperature", DIM_MilliQan_temperature);
  DebugN("DIM_MilliQan_dewpoint", DIM_MilliQan_dewpoint);
  DebugN("DIM_MilliQan_relHumidity", DIM_MilliQan_relHumidity);
  DebugN("DIM_MilliQan_height", DIM_MilliQan_height);
  
  DebugN("DIM_MilliQan_readoutTimePressure", DIM_MilliQan_readoutTimePressure);
  DebugN("DIM_MilliQan_readoutTimeTemperature", DIM_MilliQan_readoutTimeTemperature);
  DebugN("DIM_MilliQan_readoutTimeDewPoint", DIM_MilliQan_readoutTimeDewPoint);
  DebugN("DIM_MilliQan_readoutTimeRelHumidity", DIM_MilliQan_readoutTimeRelHumidity);
    
  DebugN("DIM_MilliQan_DeadbandValuePressure", DIM_MilliQan_DeadbandValuePressure);
  DebugN("DIM_MilliQan_DeadbandValueTemperature", DIM_MilliQan_DeadbandValueTemperature);
  DebugN("DIM_MilliQan_DeadbandValueDewPoint", DIM_MilliQan_DeadbandValueDewPoint);
  DebugN("DIM_MilliQan_DeadbandValueRelHumidity", DIM_MilliQan_DeadbandValueRelHumidity);

  DebugN("DIM_MilliQan_LockReadOutTogetherValue", DIM_MilliQan_LockReadOutTogetherValue);
  
  //DIM commands
  string DIM_MilliQan_SetDeadbandPressure = "MILLIQAN_BMP280/Pressure_DeadBand_hPa";
  string DIM_MilliQan_SetDeadbandTemperature = "MILLIQAN_BMP280/Temperature_DeadBand_degC";
  string DIM_MilliQan_SetDeadbandDewPoint = "MILLIQAN_BMP280/DewPoint_DeadBand_degC";
  string DIM_MilliQan_SetDeadbandRelHumidity = "MILLIQAN_BMP280/Relative_Humidity_DeadBand_percent";
  string DIM_MilliQan_SetMeasDelay = "MILLIQAN_BMP280/Measurement_Delay_ms";
  string DIM_MilliQan_SetDeadbandLocking = "MILLIQAN_BMP280/DeadBand_Locking";

  DebugN("DIM_MilliQan_SetDeadbandPressure", DIM_MilliQan_SetDeadbandPressure);
  DebugN("DIM_MilliQan_SetDeadbandTemperature", DIM_MilliQan_SetDeadbandTemperature);
  DebugN("DIM_MilliQan_SetDeadbandDewPoint", DIM_MilliQan_SetDeadbandDewPoint);
  DebugN("DIM_MilliQan_SetDeadbandRelHumidity", DIM_MilliQan_SetDeadbandRelHumidity);
  DebugN("DIM_MilliQan_SetMeasDelay", DIM_MilliQan_SetMeasDelay);
  DebugN("DIM_MilliQan_SetDeadbandLocking", DIM_MilliQan_SetDeadbandLocking);
  
  //Datapoints
  //Subscriptions
  string dpMilliQanProgramStartedAt = machineName+"rpiControlPressureMilliQan.programStartedAt";
  string dpMilliQanUpTime = machineName+"rpiControlPressureMilliQan.upTime";
  string dpMilliQanMeasurementDelayValue = machineName+"rpiControlPressureMilliQan.measDelayValue_ms";

  string dpMilliQanPressureHPa = machineName+"rpiPressureMilliQan.pressureValue_hPa";
  string dpMilliQanTemperature = machineName+"rpiPressureMilliQan.temperatureValue_degC";
  string dpMilliQanDewpoint = machineName+"rpiPressureMilliQan.dewpointValue_degC";
  string dpMilliQanRelHumidity = machineName+"rpiPressureMilliQan.relHumidityValue_percent";
  string dpMilliQanHeight = machineName+"rpiPressureMilliQan.heightValue_m";

  string dpMilliQanpressureDeadbandValue = machineName+"rpiPressureMilliQan.deadband.pressureDeadband";
  string dpMilliQantempDeadbandValue = machineName+"rpiPressureMilliQan.deadband.temperatureDeadband";
  string dpMilliQandewpointDeadbandValue = machineName+"rpiPressureMilliQan.deadband.dewpointDeadband";
  string dpMilliQanrelHumDeadbandValue = machineName+"rpiPressureMilliQan.deadband.relHumidityDeadband";

  string dpMilliQanpressureReadoutTime = machineName+"rpiPressureMilliQan.readoutTime.pressureReadoutTime";
  string dpMilliQantemperatureReadoutTime = machineName+"rpiPressureMilliQan.readoutTime.temperatureReadoutTime";
  string dpMilliQandewpointReadoutTime = machineName+"rpiPressureMilliQan.readoutTime.dewpointReadoutTime";
  string dpMilliQanrelHumidityReadoutTime = machineName+"rpiPressureMilliQan.readoutTime.relHumidityReadoutTime";
      
  string dpMilliQanlockReadoutTogetherValue = machineName+"rpiPressureMilliQan.lockReadoutTogetherValue";
   
  
  DebugN("dpMilliQanProgramStartedAt", dpMilliQanProgramStartedAt);
  DebugN("dpMilliQanMeasurementDelayValue", dpMilliQanMeasurementDelayValue);
  DebugN("dpMilliQanUpTime", dpMilliQanUpTime);
  
  DebugN("dpMilliQanPressureHPa", dpMilliQanPressureHPa);
  DebugN("dpMilliQanTemperature", dpMilliQanTemperature);
  DebugN("dpMilliQanDewpoint", dpMilliQanDewpoint);
  DebugN("dpMilliQanRelHumidity", dpMilliQanRelHumidity);
  DebugN("dpMilliQanHeight", dpMilliQanHeight);
  
  DebugN("dpMilliQanpressureDeadbandValue", dpMilliQanpressureDeadbandValue);
  DebugN("dpMilliQantempDeadbandValue", dpMilliQantempDeadbandValue);
  DebugN("dpMilliQandewpointDeadbandValue", dpMilliQandewpointDeadbandValue);
  DebugN("dpMilliQanrelHumDeadbandValue", dpMilliQanrelHumDeadbandValue);
  
  DebugN("dpMilliQanpressureReadoutTime", dpMilliQanpressureReadoutTime);
  DebugN("dpMilliQantemperatureReadoutTime", dpMilliQantemperatureReadoutTime);
  DebugN("dpMilliQandewpointReadoutTime", dpMilliQandewpointReadoutTime);
  DebugN("dpMilliQanrelHumidityReadoutTime", dpMilliQanrelHumidityReadoutTime);
  
  DebugN("dpMilliQanlockReadoutTogetherValue", dpMilliQanlockReadoutTogetherValue);


  //Datapoint for command
  string dpMilliQanSetMeasDelay = machineName+"rpiControlPressureMilliQan.setMeasDelay_ms";   
  string dpMilliQanSetDeadbandLocking = machineName+"rpiControlPressureMilliQan.setDeadbandLocking";   
  
  string dpMilliQanSetPressureDeadband = machineName+"rpiControlPressureMilliQan.setDeadband.setDeadbandPressure_hPa";
  string dpMilliQanSetTemperatureDeadband = machineName+"rpiControlPressureMilliQan.setDeadband.setDeadbandTemperature_degC";
  string dpMilliQanSetDewpointDeadband = machineName+"rpiControlPressureMilliQan.setDeadband.setDeadbandDewpoint_degC";
  string dpMilliQanSetRelHumidityDeadband = machineName+"rpiControlPressureMilliQan.setDeadband.setDeadbandRelHumidity_percent";

  
  DebugN("dpMilliQanSetMeasDelay", dpMilliQanSetMeasDelay);
  DebugN("dpMilliQanSetDeadbandLocking", dpMilliQanSetDeadbandLocking);

  DebugN("dpMilliQanSetPressureDeadband", dpMilliQanSetPressureDeadband);
  DebugN("dpMilliQanSetTemperatureDeadband", dpMilliQanSetTemperatureDeadband);
  DebugN("dpMilliQanSetDewpointDeadband", dpMilliQanSetDewpointDeadband);
  DebugN("dpMilliQanSetRelHumidityDeadband", dpMilliQanSetRelHumidityDeadband);
  
  DebugN("MilliQan Pressure sensor DONE");
  
//---------------------------------------------------------------------------------------------------------------------------------------------------
  
  //BMP085 - current UXC pressure measurement - 2017.05.12.
  //DIM services names
  string DIM_UXC_pressureDeadbandValue = "UXC_BMP085/Pressure_Deadband_Value_hPa";
  string DIM_UXC_measurementDelayValue = "UXC_BMP085/Measurement_Delay_Value_ms";
  string DIM_UXC_programStartedAt = "UXC_BMP085/Program_Started_At";
  string DIM_UXC_uptime = "UXC_BMP085/Uptime";
  string DIM_UXC_elementaryMeasNbValue = "UXC_BMP085/Elementary_Meas_Nb_Value";

  string DIM_UXC_pressureHPa = "UXC_BMP085/Pressure_hPa";
  string DIM_UXC_temperature = "UXC_BMP085/Temperature_degC";
  string DIM_UXC_height = "UXC_BMP085/Height_m";
  string DIM_UXC_readoutTime = "UXC_BMP085/Readout_Time";
  string DIM_UXC_readoutUnixTime = "UXC_BMP085/Readout_UnixTime";

  DebugN("DIM_UXC_pressureDeadbandValue", DIM_UXC_pressureDeadbandValue);
  DebugN("DIM_UXC_measurementDelayValue", DIM_UXC_measurementDelayValue);
  DebugN("DIM_UXC_programStartedAt", DIM_UXC_programStartedAt);
  DebugN("DIM_UXC_uptime", DIM_UXC_uptime);
  DebugN("DIM_UXC_elementaryMeasNbValue", DIM_UXC_elementaryMeasNbValue);
  
  DebugN("DIM_UXC_pressureHPa", DIM_UXC_pressureHPa);
  DebugN("DIM_UXC_temperature", DIM_UXC_temperature);
  DebugN("DIM_UXC_height", DIM_UXC_height);
  DebugN("DIM_UXC_readoutTime", DIM_UXC_readoutTime);
    
  //DIM commands
  string DIM_UXC_SetPressureDeadband = "UXC_BMP085/Pressure_DeadBand_hPa";
  string DIM_UXC_SetElementaryMeasNb = "UXC_BMP085/Elementary_Meas_Nb";
  string DIM_UXC_SetMeasDelay = "UXC_BMP085/Measurement_Delay_ms";

  DebugN("DIM_UXC_SetPressureDeadband", DIM_UXC_SetPressureDeadband);
  DebugN("DIM_UXC_SetElementaryMeasNb", DIM_UXC_SetElementaryMeasNb);
  DebugN("DIM_UXC_SetMeasDelay", DIM_UXC_SetMeasDelay);
  
  //Datapoints
  //Subscriptions
  string dpUXCDeadbandValue = machineName+"rpiControlPressureUXC.deadbandValue";
  string dpUXCMeasurementDelayValue = machineName+"rpiControlPressureUXC.measDelayValue";
  string dpUXCProgramStartedAt = machineName+"rpiControlPressureUXC.programStartedAt";
  string dpUXCUpTime = machineName+"rpiControlPressureUXC.upTime";
  string dpUXCElementaryMeasNbValue = machineName+"rpiControlPressureUXC.elementaryMeasNbValue";

  string dpUXCPressureHPa = machineName+"rpiPressureUXC.pressureValue_hPa";
  string dpUXCTemperature = machineName+"rpiPressureUXC.temperatureValue_degC";
  string dpUXCHeight = machineName+"rpiPressureUXC.heightValue";
  string dpUXCReadoutTime = machineName+"rpiPressureUXC.readoutTime";
  string dpUXCReadoutUnixTime = machineName+"rpiPressureUXC.readoutUnixTime";

  DebugN("dpUXCDeadbandValue", dpUXCDeadbandValue);
  DebugN("dpUXCMeasurementDelayValue", dpUXCMeasurementDelayValue);
  DebugN("dpUXCProgramStartedAt", dpUXCProgramStartedAt);
  DebugN("dpUXCUpTime", dpUXCUpTime);
  DebugN("dpUXCElementaryMeasNbValue", dpUXCElementaryMeasNbValue);

  DebugN("dpUXCPressureHPa", dpUXCPressureHPa);
  DebugN("dpUXCTemperature", dpUXCTemperature);
  DebugN("dpUXCHeight", dpUXCHeight);
  DebugN("dpUXCReadoutTime", dpUXCReadoutTime);
  DebugN("dpUXCReadoutUnixTime", dpUXCReadoutUnixTime);

  //Datapoint for command
  string dpUXCSetPressureDeadband = machineName+"rpiControlPressureUXC.setDeadband";
  string dpUXCSetElementaryMeasNb = machineName+"rpiControlPressureUXC.setElementaryMeasNb";
  string dpUXCSetMeasDelay = machineName+"rpiControlPressureUXC.setMeasDelay";    
  
  DebugN("dpUXCSetPressureDeadband", dpUXCSetPressureDeadband);
  DebugN("dpUXCSetElementaryMeasNb", dpUXCSetElementaryMeasNb);
  DebugN("dpUXCSetMeasDelay", dpUXCSetMeasDelay);
  
  DebugN("UXC Pressure sensor DONE");
  
//-----------------------------------------------  
  //BMP280 - current SX5 pressure measurement - 2017.05.12.
  //DIM services names
  string DIM_SX5_programStartedAt = "SX5CSC_BMP280/Program_started_at";
  string DIM_SX5_uptime = "SX5CSC_BMP280/Uptime";
  string DIM_SX5_measurementDelayValue = "SX5CSC_BMP280/Measurement_Delay_Value_ms";

  string DIM_SX5_pressureHPa = "SX5CSC_BMP280/Pressure_hPa";
  string DIM_SX5_temperature = "SX5CSC_BMP280/Temperature_degC";
  string DIM_SX5_dewpoint = "SX5CSC_BMP280/Dewpoint_degC";
  string DIM_SX5_relHumidity = "SX5CSC_BMP280/Relative_Humidity_percent";
  string DIM_SX5_height = "SX5CSC_BMP280/Height_m";
  
  string DIM_SX5_readoutTimePressure = "SX5CSC_BMP280/Pressure_Readout_Time";
  string DIM_SX5_readoutTimeTemperature = "SX5CSC_BMP280/Temperature_Readout_Time";
  string DIM_SX5_readoutTimeDewPoint = "SX5CSC_BMP280/DewPoint_Readout_Time";
  string DIM_SX5_readoutTimeRelHumidity = "SX5CSC_BMP280/RelHumidity_Readout_Time";

  string DIM_SX5_DeadbandValuePressure = "SX5CSC_BMP280/Pressure_Deadband_Value_hPa";
  string DIM_SX5_DeadbandValueTemperature = "SX5CSC_BMP280/Temperature_Deadband_Value_degC";
  string DIM_SX5_DeadbandValueDewPoint = "SX5CSC_BMP280/DewPoint_Deadband_Value_degC";
  string DIM_SX5_DeadbandValueRelHumidity = "SX5CSC_BMP280/RelHumidity_Deadband_Value_percent";

  string DIM_SX5_LockReadOutTogetherValue = "SX5CSC_BMP280/Lock_readouts_together_Value";
  
  DebugN("DIM_SX5_measurementDelayValue", DIM_SX5_measurementDelayValue);
  DebugN("DIM_SX5_programStartedAt", DIM_SX5_programStartedAt);
  DebugN("DIM_SX5_uptime", DIM_SX5_uptime);
  
  DebugN("DIM_SX5_pressureHPa", DIM_SX5_pressureHPa);
  DebugN("DIM_SX5_temperature", DIM_SX5_temperature);
  DebugN("DIM_SX5_dewpoint", DIM_SX5_dewpoint);
  DebugN("DIM_SX5_relHumidity", DIM_SX5_relHumidity);
  DebugN("DIM_SX5_height", DIM_SX5_height);
  
  DebugN("DIM_SX5_readoutTimePressure", DIM_SX5_readoutTimePressure);
  DebugN("DIM_SX5_readoutTimeTemperature", DIM_SX5_readoutTimeTemperature);
  DebugN("DIM_SX5_readoutTimeDewPoint", DIM_SX5_readoutTimeDewPoint);
  DebugN("DIM_SX5_readoutTimeRelHumidity", DIM_SX5_readoutTimeRelHumidity);
    
  DebugN("DIM_SX5_DeadbandValuePressure", DIM_SX5_DeadbandValuePressure);
  DebugN("DIM_SX5_DeadbandValueTemperature", DIM_SX5_DeadbandValueTemperature);
  DebugN("DIM_SX5_DeadbandValueDewPoint", DIM_SX5_DeadbandValueDewPoint);
  DebugN("DIM_SX5_DeadbandValueRelHumidity", DIM_SX5_DeadbandValueRelHumidity);

  DebugN("DIM_SX5_LockReadOutTogetherValue", DIM_SX5_LockReadOutTogetherValue);
  
  //DIM commands
  string DIM_SX5_SetDeadbandPressure = "SX5CSC_BMP280/Pressure_DeadBand_hPa";
  string DIM_SX5_SetDeadbandTemperature = "SX5CSC_BMP280/Temperature_DeadBand_degC";
  string DIM_SX5_SetDeadbandDewPoint = "SX5CSC_BMP280/DewPoint_DeadBand_degC";
  string DIM_SX5_SetDeadbandRelHumidity = "SX5CSC_BMP280/Relative_Humidity_DeadBand_percent";
  string DIM_SX5_SetMeasDelay = "SX5CSC_BMP280/Measurement_Delay_ms";
  string DIM_SX5_SetDeadbandLocking = "SX5CSC_BMP280/DeadBand_Locking";

  DebugN("DIM_SX5_SetDeadbandPressure", DIM_SX5_SetDeadbandPressure);
  DebugN("DIM_SX5_SetDeadbandTemperature", DIM_SX5_SetDeadbandTemperature);
  DebugN("DIM_SX5_SetDeadbandDewPoint", DIM_SX5_SetDeadbandDewPoint);
  DebugN("DIM_SX5_SetDeadbandRelHumidity", DIM_SX5_SetDeadbandRelHumidity);
  DebugN("DIM_SX5_SetMeasDelay", DIM_SX5_SetMeasDelay);
  DebugN("DIM_SX5_SetDeadbandLocking", DIM_SX5_SetDeadbandLocking);
  
  //Datapoints
  //Subscriptions
  string dpSX5ProgramStartedAt = machineName+"rpiControlPressureSX5.programStartedAt";
  string dpSX5UpTime = machineName+"rpiControlPressureSX5.upTime";
  string dpSX5MeasurementDelayValue = machineName+"rpiControlPressureSX5.measDelayValue_ms";

  string dpSX5PressureHPa = machineName+"rpiPressureSX5.pressureValue_hPa";
  string dpSX5Temperature = machineName+"rpiPressureSX5.temperatureValue_degC";
  string dpSX5Dewpoint = machineName+"rpiPressureSX5.dewpointValue_degC";
  string dpSX5RelHumidity = machineName+"rpiPressureSX5.relHumidityValue_percent";
  string dpSX5Height = machineName+"rpiPressureSX5.heightValue_m";

  string dpSX5pressureDeadbandValue = machineName+"rpiPressureSX5.deadband.pressureDeadband";
  string dpSX5tempDeadbandValue = machineName+"rpiPressureSX5.deadband.temperatureDeadband";
  string dpSX5dewpointDeadbandValue = machineName+"rpiPressureSX5.deadband.dewpointDeadband";
  string dpSX5relHumDeadbandValue = machineName+"rpiPressureSX5.deadband.relHumidityDeadband";

  string dpSX5pressureReadoutTime = machineName+"rpiPressureSX5.readoutTime.pressureReadoutTime";
  string dpSX5temperatureReadoutTime = machineName+"rpiPressureSX5.readoutTime.temperatureReadoutTime";
  string dpSX5dewpointReadoutTime = machineName+"rpiPressureSX5.readoutTime.dewpointReadoutTime";
  string dpSX5relHumidityReadoutTime = machineName+"rpiPressureSX5.readoutTime.relHumidityReadoutTime";
      
  string dpSX5lockReadoutTogetherValue = machineName+"rpiPressureSX5.lockReadoutTogetherValue";
   
  
  DebugN("dpSX5ProgramStartedAt", dpSX5ProgramStartedAt);
  DebugN("dpSX5MeasurementDelayValue", dpSX5MeasurementDelayValue);
  DebugN("dpSX5UpTime", dpSX5UpTime);
  
  DebugN("dpSX5PressureHPa", dpSX5PressureHPa);
  DebugN("dpSX5Temperature", dpSX5Temperature);
  DebugN("dpSX5Dewpoint", dpSX5Dewpoint);
  DebugN("dpSX5RelHumidity", dpSX5RelHumidity);
  DebugN("dpSX5Height", dpSX5Height);
  
  DebugN("dpSX5pressureDeadbandValue", dpSX5pressureDeadbandValue);
  DebugN("dpSX5tempDeadbandValue", dpSX5tempDeadbandValue);
  DebugN("dpSX5dewpointDeadbandValue", dpSX5dewpointDeadbandValue);
  DebugN("dpSX5relHumDeadbandValue", dpSX5relHumDeadbandValue);
  
  DebugN("dpSX5pressureReadoutTime", dpSX5pressureReadoutTime);
  DebugN("dpSX5temperatureReadoutTime", dpSX5temperatureReadoutTime);
  DebugN("dpSX5dewpointReadoutTime", dpSX5dewpointReadoutTime);
  DebugN("dpSX5relHumidityReadoutTime", dpSX5relHumidityReadoutTime);
  
  DebugN("dpSX5lockReadoutTogetherValue", dpSX5lockReadoutTogetherValue);


  //Datapoint for command
  string dpSX5SetMeasDelay = machineName+"rpiControlPressureSX5.setMeasDelay_ms";   
  string dpSX5SetDeadbandLocking = machineName+"rpiControlPressureSX5.setDeadbandLocking";   
  
  string dpSX5SetPressureDeadband = machineName+"rpiControlPressureSX5.setDeadband.setDeadbandPressure_hPa";
  string dpSX5SetTemperatureDeadband = machineName+"rpiControlPressureSX5.setDeadband.setDeadbandTemperature_degC";
  string dpSX5SetDewpointDeadband = machineName+"rpiControlPressureSX5.setDeadband.setDeadbandDewpoint_degC";
  string dpSX5SetRelHumidityDeadband = machineName+"rpiControlPressureSX5.setDeadband.setDeadbandRelHumidity_percent";

  
  DebugN("dpSX5SetMeasDelay", dpSX5SetMeasDelay);
  DebugN("dpSX5SetDeadbandLocking", dpSX5SetDeadbandLocking);

  DebugN("dpSX5SetPressureDeadband", dpSX5SetPressureDeadband);
  DebugN("dpSX5SetTemperatureDeadband", dpSX5SetTemperatureDeadband);
  DebugN("dpSX5SetDewpointDeadband", dpSX5SetDewpointDeadband);
  DebugN("dpSX5SetRelHumidityDeadband", dpSX5SetRelHumidityDeadband);
  
  DebugN("SX5 Pressure sensor DONE");
  
//-----------------------------------------------  
  //X0 water cooling measurements - 2017.06.06.
  //DIM services names
  string DIM_UXCCool_programStartedAt = "UXCCoolingPressure/Program_Started_at";
  string DIM_UXCCool_uptime = "UXCCoolingPressure/Uptime";

  string DIM_UXCCool_ch00val = "UXCCoolingPressure/CH00_values";
  string DIM_UXCCool_ch01val = "UXCCoolingPressure/CH01_values";
  string DIM_UXCCool_ch02val = "UXCCoolingPressure/CH02_values";
  string DIM_UXCCool_ch03val = "UXCCoolingPressure/CH03_values";
  string DIM_UXCCool_ch04val = "UXCCoolingPressure/CH04_values";
  string DIM_UXCCool_ch05val = "UXCCoolingPressure/CH05_values";
  string DIM_UXCCool_ch06val = "UXCCoolingPressure/CH06_values";
  string DIM_UXCCool_ch07val = "UXCCoolingPressure/CH07_values";

  string DIM_UXCCool_ch00deadband = "UXCCoolingPressure/CH00_deadband";
  string DIM_UXCCool_ch01deadband = "UXCCoolingPressure/CH01_deadband";
  string DIM_UXCCool_ch02deadband = "UXCCoolingPressure/CH02_deadband";
  string DIM_UXCCool_ch03deadband = "UXCCoolingPressure/CH03_deadband";
  string DIM_UXCCool_ch04deadband = "UXCCoolingPressure/CH04_deadband";
  string DIM_UXCCool_ch05deadband = "UXCCoolingPressure/CH05_deadband";
  string DIM_UXCCool_ch06deadband = "UXCCoolingPressure/CH06_deadband";
  string DIM_UXCCool_ch07deadband = "UXCCoolingPressure/CH07_deadband";
  
  string DIM_UXCCool_DataRate = "UXCCoolingPressure/DataRate__samples/ch/sec";
  
  DebugN("DIM_UXCCool_programStartedAt", DIM_UXCCool_programStartedAt);
  DebugN("DIM_UXCCool_uptime", DIM_UXCCool_uptime);
  
  DebugN("DIM_UXCCool_ch00val", DIM_UXCCool_ch00val);
  DebugN("DIM_UXCCool_ch01val", DIM_UXCCool_ch01val);
  DebugN("DIM_UXCCool_ch02val", DIM_UXCCool_ch02val);
  DebugN("DIM_UXCCool_ch03val", DIM_UXCCool_ch03val);
  DebugN("DIM_UXCCool_ch04val", DIM_UXCCool_ch04val);
  DebugN("DIM_UXCCool_ch05val", DIM_UXCCool_ch05val);
  DebugN("DIM_UXCCool_ch06val", DIM_UXCCool_ch06val);
  DebugN("DIM_UXCCool_ch07val", DIM_UXCCool_ch07val);
  
  DebugN("DIM_UXCCool_ch00deadband", DIM_UXCCool_ch00deadband);
  DebugN("DIM_UXCCool_ch01deadband", DIM_UXCCool_ch01deadband);
  DebugN("DIM_UXCCool_ch02deadband", DIM_UXCCool_ch02deadband);
  DebugN("DIM_UXCCool_ch03deadband", DIM_UXCCool_ch03deadband);
  DebugN("DIM_UXCCool_ch04deadband", DIM_UXCCool_ch04deadband);
  DebugN("DIM_UXCCool_ch05deadband", DIM_UXCCool_ch05deadband);
  DebugN("DIM_UXCCool_ch06deadband", DIM_UXCCool_ch06deadband);
  DebugN("DIM_UXCCool_ch07deadband", DIM_UXCCool_ch07deadband);

  DebugN("DIM_UXCCool_DataRate", DIM_UXCCool_DataRate);
  
  //DIM commands
  string DIM_UXCCool_ch00deadbandcmd = "UXCCoolingPressure/CH00_deadband_command";
  string DIM_UXCCool_ch01deadbandcmd = "UXCCoolingPressure/CH01_deadband_command";
  string DIM_UXCCool_ch02deadbandcmd = "UXCCoolingPressure/CH02_deadband_command";
  string DIM_UXCCool_ch03deadbandcmd = "UXCCoolingPressure/CH03_deadband_command";
  string DIM_UXCCool_ch04deadbandcmd = "UXCCoolingPressure/CH04_deadband_command";
  string DIM_UXCCool_ch05deadbandcmd = "UXCCoolingPressure/CH05_deadband_command";
  string DIM_UXCCool_ch06deadbandcmd = "UXCCoolingPressure/CH06_deadband_command";
  string DIM_UXCCool_ch07deadbandcmd = "UXCCoolingPressure/CH07_deadband_command";

  DebugN("DIM_UXCCool_ch00deadbandcmd", DIM_UXCCool_ch00deadbandcmd);
  DebugN("DIM_UXCCool_ch01deadbandcmd", DIM_UXCCool_ch01deadbandcmd);
  DebugN("DIM_UXCCool_ch02deadbandcmd", DIM_UXCCool_ch02deadbandcmd);
  DebugN("DIM_UXCCool_ch03deadbandcmd", DIM_UXCCool_ch03deadbandcmd);
  DebugN("DIM_UXCCool_ch04deadbandcmd", DIM_UXCCool_ch04deadbandcmd);
  DebugN("DIM_UXCCool_ch05deadbandcmd", DIM_UXCCool_ch05deadbandcmd);
  DebugN("DIM_UXCCool_ch06deadbandcmd", DIM_UXCCool_ch06deadbandcmd);
  DebugN("DIM_UXCCool_ch07deadbandcmd", DIM_UXCCool_ch07deadbandcmd);
  
  //Datapoints
  //Subscriptions
  string dpUXCCoolProgramStartedAt = machineName+"rpiControlCoolingUXC_X0.programStartedAt";
  string dpUXCCoolUpTime = machineName+"rpiControlCoolingUXC_X0.upTime";

  string dpUXCCoolCH00values = machineName+"rpiCoolingUXC_X0.ch00_values";
  string dpUXCCoolCH01values = machineName+"rpiCoolingUXC_X0.ch01_values";
  string dpUXCCoolCH02values = machineName+"rpiCoolingUXC_X0.ch02_values";
  string dpUXCCoolCH03values = machineName+"rpiCoolingUXC_X0.ch03_values";
  string dpUXCCoolCH04values = machineName+"rpiCoolingUXC_X0.ch04_values";
  string dpUXCCoolCH05values = machineName+"rpiCoolingUXC_X0.ch05_values";
  string dpUXCCoolCH06values = machineName+"rpiCoolingUXC_X0.ch06_values";
  string dpUXCCoolCH07values = machineName+"rpiCoolingUXC_X0.ch07_values";

  string dpUXCCoolCH00deadband = machineName+"rpiCoolingUXC_X0.ch00_deadband";
  string dpUXCCoolCH01deadband = machineName+"rpiCoolingUXC_X0.ch01_deadband";
  string dpUXCCoolCH02deadband = machineName+"rpiCoolingUXC_X0.ch02_deadband";
  string dpUXCCoolCH03deadband = machineName+"rpiCoolingUXC_X0.ch03_deadband";
  string dpUXCCoolCH04deadband = machineName+"rpiCoolingUXC_X0.ch04_deadband";
  string dpUXCCoolCH05deadband = machineName+"rpiCoolingUXC_X0.ch05_deadband";
  string dpUXCCoolCH06deadband = machineName+"rpiCoolingUXC_X0.ch06_deadband";
  string dpUXCCoolCH07deadband = machineName+"rpiCoolingUXC_X0.ch07_deadband";
      
  string dpUXCCoolDataRate = machineName+"rpiCoolingUXC_X0.dataRate__samples_ch_sec";
   
  
  DebugN("dpUXCCoolProgramStartedAt", dpUXCCoolProgramStartedAt);
  DebugN("dpUXCCoolUpTime", dpUXCCoolUpTime);
  
  DebugN("dpUXCCoolCH00values", dpUXCCoolCH00values);
  DebugN("dpUXCCoolCH01values", dpUXCCoolCH01values);
  DebugN("dpUXCCoolCH02values", dpUXCCoolCH02values);
  DebugN("dpUXCCoolCH03values", dpUXCCoolCH03values);
  DebugN("dpUXCCoolCH04values", dpUXCCoolCH04values);
  DebugN("dpUXCCoolCH05values", dpUXCCoolCH05values);
  DebugN("dpUXCCoolCH06values", dpUXCCoolCH06values);
  DebugN("dpUXCCoolCH07values", dpUXCCoolCH07values);

  DebugN("dpUXCCoolCH00deadband", dpUXCCoolCH00deadband);
  DebugN("dpUXCCoolCH01deadband", dpUXCCoolCH01deadband);
  DebugN("dpUXCCoolCH02deadband", dpUXCCoolCH02deadband);
  DebugN("dpUXCCoolCH03deadband", dpUXCCoolCH03deadband);
  DebugN("dpUXCCoolCH04deadband", dpUXCCoolCH04deadband);
  DebugN("dpUXCCoolCH05deadband", dpUXCCoolCH05deadband);
  DebugN("dpUXCCoolCH06deadband", dpUXCCoolCH06deadband);
  DebugN("dpUXCCoolCH07deadband", dpUXCCoolCH07deadband);
  
  DebugN("dpUXCCoolDataRate", dpUXCCoolDataRate);

  //Datapoint for command
  string dpUXCCoolCH00deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch00DeadbandCmd";   
  string dpUXCCoolCH01deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch01DeadbandCmd";   
  string dpUXCCoolCH02deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch02DeadbandCmd";   
  string dpUXCCoolCH03deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch03DeadbandCmd";   
  string dpUXCCoolCH04deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch04DeadbandCmd";   
  string dpUXCCoolCH05deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch05DeadbandCmd";   
  string dpUXCCoolCH06deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch06DeadbandCmd";   
  string dpUXCCoolCH07deadbandcmd = machineName+"rpiControlCoolingUXC_X0.ch07DeadbandCmd";   
    
  DebugN("dpUXCCoolCH00deadbandcmd", dpUXCCoolCH00deadbandcmd);
  DebugN("dpUXCCoolCH01deadbandcmd", dpUXCCoolCH01deadbandcmd);
  DebugN("dpUXCCoolCH02deadbandcmd", dpUXCCoolCH02deadbandcmd);
  DebugN("dpUXCCoolCH03deadbandcmd", dpUXCCoolCH03deadbandcmd);
  DebugN("dpUXCCoolCH04deadbandcmd", dpUXCCoolCH04deadbandcmd);
  DebugN("dpUXCCoolCH05deadbandcmd", dpUXCCoolCH05deadbandcmd);
  DebugN("dpUXCCoolCH06deadbandcmd", dpUXCCoolCH06deadbandcmd);
  DebugN("dpUXCCoolCH07deadbandcmd", dpUXCCoolCH07deadbandcmd);
  
  DebugN("UXC X0 Cooling Pressure DONE");

//-----------------------------------------------  
  //BMP280 - underground gas room UGX pressure measurement - 2017.09.15.
  //DIM services names
  string DIM_UGX_programStartedAt = "USCUGX_BMP280/Program_started_at";
  string DIM_UGX_uptime = "USCUGX_BMP280/Uptime";
  string DIM_UGX_measurementDelayValue = "USCUGX_BMP280/Measurement_Delay_Value_ms";

  string DIM_UGX_pressureHPa = "USCUGX_BMP280/Pressure_hPa";
  string DIM_UGX_temperature = "USCUGX_BMP280/Temperature_degC";
  string DIM_UGX_dewpoint = "USCUGX_BMP280/Dewpoint_degC";
  string DIM_UGX_relHumidity = "USCUGX_BMP280/Relative_Humidity_percent";
  string DIM_UGX_height = "USCUGX_BMP280/Height_m";
  
  string DIM_UGX_readoutTimePressure = "USCUGX_BMP280/Pressure_Readout_Time";
  string DIM_UGX_readoutTimeTemperature = "USCUGX_BMP280/Temperature_Readout_Time";
  string DIM_UGX_readoutTimeDewPoint = "USCUGX_BMP280/DewPoint_Readout_Time";
  string DIM_UGX_readoutTimeRelHumidity = "USCUGX_BMP280/RelHumidity_Readout_Time";

  string DIM_UGX_DeadbandValuePressure = "USCUGX_BMP280/Pressure_Deadband_Value_hPa";
  string DIM_UGX_DeadbandValueTemperature = "USCUGX_BMP280/Temperature_Deadband_Value_degC";
  string DIM_UGX_DeadbandValueDewPoint = "USCUGX_BMP280/DewPoint_Deadband_Value_degC";
  string DIM_UGX_DeadbandValueRelHumidity = "USCUGX_BMP280/RelHumidity_Deadband_Value_percent";

  string DIM_UGX_LockReadOutTogetherValue = "USCUGX_BMP280/Lock_readouts_together_Value";
  
  DebugN("DIM_UGX_measurementDelayValue", DIM_UGX_measurementDelayValue);
  DebugN("DIM_UGX_programStartedAt", DIM_UGX_programStartedAt);
  DebugN("DIM_UGX_uptime", DIM_UGX_uptime);
  
  DebugN("DIM_UGX_pressureHPa", DIM_UGX_pressureHPa);
  DebugN("DIM_UGX_temperature", DIM_UGX_temperature);
  DebugN("DIM_UGX_dewpoint", DIM_UGX_dewpoint);
  DebugN("DIM_UGX_relHumidity", DIM_UGX_relHumidity);
  DebugN("DIM_UGX_height", DIM_UGX_height);
  
  DebugN("DIM_UGX_readoutTimePressure", DIM_UGX_readoutTimePressure);
  DebugN("DIM_UGX_readoutTimeTemperature", DIM_UGX_readoutTimeTemperature);
  DebugN("DIM_UGX_readoutTimeDewPoint", DIM_UGX_readoutTimeDewPoint);
  DebugN("DIM_UGX_readoutTimeRelHumidity", DIM_UGX_readoutTimeRelHumidity);
    
  DebugN("DIM_UGX_DeadbandValuePressure", DIM_UGX_DeadbandValuePressure);
  DebugN("DIM_UGX_DeadbandValueTemperature", DIM_UGX_DeadbandValueTemperature);
  DebugN("DIM_UGX_DeadbandValueDewPoint", DIM_UGX_DeadbandValueDewPoint);
  DebugN("DIM_UGX_DeadbandValueRelHumidity", DIM_UGX_DeadbandValueRelHumidity);

  DebugN("DIM_UGX_LockReadOutTogetherValue", DIM_UGX_LockReadOutTogetherValue);
  
  //DIM commands
  string DIM_UGX_SetDeadbandPressure = "USCUGX_BMP280/Pressure_DeadBand_hPa";
  string DIM_UGX_SetDeadbandTemperature = "USCUGX_BMP280/Temperature_DeadBand_degC";
  string DIM_UGX_SetDeadbandDewPoint = "USCUGX_BMP280/DewPoint_DeadBand_degC";
  string DIM_UGX_SetDeadbandRelHumidity = "USCUGX_BMP280/Relative_Humidity_DeadBand_percent";
  string DIM_UGX_SetMeasDelay = "USCUGX_BMP280/Measurement_Delay_ms";
  string DIM_UGX_SetDeadbandLocking = "USCUGX_BMP280/DeadBand_Locking";

  DebugN("DIM_UGX_SetDeadbandPressure", DIM_UGX_SetDeadbandPressure);
  DebugN("DIM_UGX_SetDeadbandTemperature", DIM_UGX_SetDeadbandTemperature);
  DebugN("DIM_UGX_SetDeadbandDewPoint", DIM_UGX_SetDeadbandDewPoint);
  DebugN("DIM_UGX_SetDeadbandRelHumidity", DIM_UGX_SetDeadbandRelHumidity);
  DebugN("DIM_UGX_SetMeasDelay", DIM_UGX_SetMeasDelay);
  DebugN("DIM_UGX_SetDeadbandLocking", DIM_UGX_SetDeadbandLocking);
  
  //Datapoints
  //Subscriptions
  string dpUGXProgramStartedAt = machineName+"rpiControlPressureUGX.programStartedAt";
  string dpUGXUpTime = machineName+"rpiControlPressureUGX.upTime";
  string dpUGXMeasurementDelayValue = machineName+"rpiControlPressureUGX.measDelayValue_ms";

  string dpUGXPressureHPa = machineName+"rpiPressureUGX.pressureValue_hPa";
  string dpUGXTemperature = machineName+"rpiPressureUGX.temperatureValue_degC";
  string dpUGXDewpoint = machineName+"rpiPressureUGX.dewpointValue_degC";
  string dpUGXRelHumidity = machineName+"rpiPressureUGX.relHumidityValue_percent";
  string dpUGXHeight = machineName+"rpiPressureUGX.heightValue_m";

  string dpUGXpressureDeadbandValue = machineName+"rpiPressureUGX.deadband.pressureDeadband";
  string dpUGXtempDeadbandValue = machineName+"rpiPressureUGX.deadband.temperatureDeadband";
  string dpUGXdewpointDeadbandValue = machineName+"rpiPressureUGX.deadband.dewpointDeadband";
  string dpUGXrelHumDeadbandValue = machineName+"rpiPressureUGX.deadband.relHumidityDeadband";

  string dpUGXpressureReadoutTime = machineName+"rpiPressureUGX.readoutTime.pressureReadoutTime";
  string dpUGXtemperatureReadoutTime = machineName+"rpiPressureUGX.readoutTime.temperatureReadoutTime";
  string dpUGXdewpointReadoutTime = machineName+"rpiPressureUGX.readoutTime.dewpointReadoutTime";
  string dpUGXrelHumidityReadoutTime = machineName+"rpiPressureUGX.readoutTime.relHumidityReadoutTime";
      
  string dpUGXlockReadoutTogetherValue = machineName+"rpiPressureUGX.lockReadoutTogetherValue";
   
  
  DebugN("dpUGXProgramStartedAt", dpUGXProgramStartedAt);
  DebugN("dpUGXMeasurementDelayValue", dpUGXMeasurementDelayValue);
  DebugN("dpUGXUpTime", dpUGXUpTime);
  
  DebugN("dpUGXPressureHPa", dpUGXPressureHPa);
  DebugN("dpUGXTemperature", dpUGXTemperature);
  DebugN("dpUGXDewpoint", dpUGXDewpoint);
  DebugN("dpUGXRelHumidity", dpUGXRelHumidity);
  DebugN("dpUGXHeight", dpUGXHeight);
  
  DebugN("dpUGXpressureDeadbandValue", dpUGXpressureDeadbandValue);
  DebugN("dpUGXtempDeadbandValue", dpUGXtempDeadbandValue);
  DebugN("dpUGXdewpointDeadbandValue", dpUGXdewpointDeadbandValue);
  DebugN("dpUGXrelHumDeadbandValue", dpUGXrelHumDeadbandValue);
  
  DebugN("dpUGXpressureReadoutTime", dpUGXpressureReadoutTime);
  DebugN("dpUGXtemperatureReadoutTime", dpUGXtemperatureReadoutTime);
  DebugN("dpUGXdewpointReadoutTime", dpUGXdewpointReadoutTime);
  DebugN("dpUGXrelHumidityReadoutTime", dpUGXrelHumidityReadoutTime);
  
  DebugN("dpUGXlockReadoutTogetherValue", dpUGXlockReadoutTogetherValue);


  //Datapoint for command
  string dpUGXSetMeasDelay = machineName+"rpiControlPressureUGX.setMeasDelay_ms";   
  string dpUGXSetDeadbandLocking = machineName+"rpiControlPressureUGX.setDeadbandLocking";   
  
  string dpUGXSetPressureDeadband = machineName+"rpiControlPressureUGX.setDeadband.setDeadbandPressure_hPa";
  string dpUGXSetTemperatureDeadband = machineName+"rpiControlPressureUGX.setDeadband.setDeadbandTemperature_degC";
  string dpUGXSetDewpointDeadband = machineName+"rpiControlPressureUGX.setDeadband.setDeadbandDewpoint_degC";
  string dpUGXSetRelHumidityDeadband = machineName+"rpiControlPressureUGX.setDeadband.setDeadbandRelHumidity_percent";

  
  DebugN("dpUGXSetMeasDelay", dpUGXSetMeasDelay);
  DebugN("dpUGXSetDeadbandLocking", dpUGXSetDeadbandLocking);

  DebugN("dpUGXSetPressureDeadband", dpUGXSetPressureDeadband);
  DebugN("dpUGXSetTemperatureDeadband", dpUGXSetTemperatureDeadband);
  DebugN("dpUGXSetDewpointDeadband", dpUGXSetDewpointDeadband);
  DebugN("dpUGXSetRelHumidityDeadband", dpUGXSetRelHumidityDeadband);
  
  DebugN("UGX Pressure sensor DONE");
  
//-----------------------------------------------    
 
  //Init: Delete config then create config
  fwDim_deleteConfig(configDIM);
  fwDim_createConfig(configDIM);
  
  subscribe(configDIM, DIM_UXC_pressureDeadbandValue, dpUXCDeadbandValue);
  subscribe(configDIM, DIM_UXC_measurementDelayValue, dpUXCMeasurementDelayValue);
  subscribe(configDIM, DIM_UXC_programStartedAt, dpUXCProgramStartedAt);
  subscribe(configDIM, DIM_UXC_uptime, dpUXCUpTime);
  subscribe(configDIM, DIM_UXC_elementaryMeasNbValue, dpUXCElementaryMeasNbValue);

  subscribe(configDIM, DIM_UXC_pressureHPa, dpUXCPressureHPa);
  subscribe(configDIM, DIM_UXC_temperature, dpUXCTemperature);
  subscribe(configDIM, DIM_UXC_height, dpUXCHeight);
  subscribe(configDIM, DIM_UXC_readoutTime, dpUXCReadoutTime);
  subscribe(configDIM, DIM_UXC_readoutUnixTime, dpUXCReadoutUnixTime);
  
  
  subscribeCMD(configDIM, DIM_UXC_SetPressureDeadband, dpUXCSetPressureDeadband);
  subscribeCMD(configDIM, DIM_UXC_SetElementaryMeasNb, dpUXCSetElementaryMeasNb);
  subscribeCMD(configDIM, DIM_UXC_SetMeasDelay, dpUXCSetMeasDelay);

  DebugN("UXC Pressure sensor DIM subscription DONE");
 
//-----------------------------------------------  
  //BMP280 - new UXC pressure measurement - 2018.07.29.
  //subscriptions
  subscribe(configDIM, DIM_UXC_2_programStartedAt, dpUXC_2ProgramStartedAt);
  subscribe(configDIM, DIM_UXC_2_uptime, dpUXC_2UpTime);
  subscribe(configDIM, DIM_UXC_2_measurementDelayValue, dpUXC_2MeasurementDelayValue);

  subscribe(configDIM, DIM_UXC_2_pressureHPa, dpUXC_2PressureHPa);
  subscribe(configDIM, DIM_UXC_2_temperature, dpUXC_2Temperature);
  subscribe(configDIM, DIM_UXC_2_dewpoint, dpUXC_2Dewpoint);
  subscribe(configDIM, DIM_UXC_2_relHumidity, dpUXC_2RelHumidity);
  subscribe(configDIM, DIM_UXC_2_height, dpUXC_2Height);

  subscribe(configDIM, DIM_UXC_2_DeadbandValuePressure, dpUXC_2pressureDeadbandValue);
  subscribe(configDIM, DIM_UXC_2_DeadbandValueTemperature, dpUXC_2tempDeadbandValue);
  subscribe(configDIM, DIM_UXC_2_DeadbandValueDewPoint, dpUXC_2dewpointDeadbandValue);
  subscribe(configDIM, DIM_UXC_2_DeadbandValueRelHumidity, dpUXC_2relHumDeadbandValue);

  subscribe(configDIM, DIM_UXC_2_readoutTimePressure, dpUXC_2pressureReadoutTime);
  subscribe(configDIM, DIM_UXC_2_readoutTimeTemperature, dpUXC_2temperatureReadoutTime);
  subscribe(configDIM, DIM_UXC_2_readoutTimeDewPoint, dpUXC_2dewpointReadoutTime);
  subscribe(configDIM, DIM_UXC_2_readoutTimeRelHumidity, dpUXC_2relHumidityReadoutTime);

  subscribe(configDIM, DIM_UXC_2_LockReadOutTogetherValue, dpUXC_2lockReadoutTogetherValue);  
  
  //commands
  subscribeCMD(configDIM, DIM_UXC_2_SetMeasDelay, dpUXC_2SetMeasDelay);
  subscribeCMD(configDIM, DIM_UXC_2_SetDeadbandLocking, dpUXC_2SetDeadbandLocking);

  subscribeCMD(configDIM, DIM_UXC_2_SetDeadbandPressure, dpUXC_2SetPressureDeadband);
  subscribeCMD(configDIM, DIM_UXC_2_SetDeadbandTemperature, dpUXC_2SetTemperatureDeadband);
  subscribeCMD(configDIM, DIM_UXC_2_SetDeadbandDewPoint, dpUXC_2SetDewpointDeadband);
  subscribeCMD(configDIM, DIM_UXC_2_SetDeadbandRelHumidity, dpUXC_2SetRelHumidityDeadband);
  
  DebugN("MilliQan Pressure sensor DIM subscription DONE");

//-----------------------------------------------  
  //BMP280 - current MilliQan pressure measurement - 2018.04.26.
  //subscriptions
  subscribe(configDIM, DIM_MilliQan_programStartedAt, dpMilliQanProgramStartedAt);
  subscribe(configDIM, DIM_MilliQan_uptime, dpMilliQanUpTime);
  subscribe(configDIM, DIM_MilliQan_measurementDelayValue, dpMilliQanMeasurementDelayValue);

  subscribe(configDIM, DIM_MilliQan_pressureHPa, dpMilliQanPressureHPa);
  subscribe(configDIM, DIM_MilliQan_temperature, dpMilliQanTemperature);
  subscribe(configDIM, DIM_MilliQan_dewpoint, dpMilliQanDewpoint);
  subscribe(configDIM, DIM_MilliQan_relHumidity, dpMilliQanRelHumidity);
  subscribe(configDIM, DIM_MilliQan_height, dpMilliQanHeight);

  subscribe(configDIM, DIM_MilliQan_DeadbandValuePressure, dpMilliQanpressureDeadbandValue);
  subscribe(configDIM, DIM_MilliQan_DeadbandValueTemperature, dpMilliQantempDeadbandValue);
  subscribe(configDIM, DIM_MilliQan_DeadbandValueDewPoint, dpMilliQandewpointDeadbandValue);
  subscribe(configDIM, DIM_MilliQan_DeadbandValueRelHumidity, dpMilliQanrelHumDeadbandValue);

  subscribe(configDIM, DIM_MilliQan_readoutTimePressure, dpMilliQanpressureReadoutTime);
  subscribe(configDIM, DIM_MilliQan_readoutTimeTemperature, dpMilliQantemperatureReadoutTime);
  subscribe(configDIM, DIM_MilliQan_readoutTimeDewPoint, dpMilliQandewpointReadoutTime);
  subscribe(configDIM, DIM_MilliQan_readoutTimeRelHumidity, dpMilliQanrelHumidityReadoutTime);

  subscribe(configDIM, DIM_MilliQan_LockReadOutTogetherValue, dpMilliQanlockReadoutTogetherValue);  
  
  //commands
  subscribeCMD(configDIM, DIM_MilliQan_SetMeasDelay, dpMilliQanSetMeasDelay);
  subscribeCMD(configDIM, DIM_MilliQan_SetDeadbandLocking, dpMilliQanSetDeadbandLocking);

  subscribeCMD(configDIM, DIM_MilliQan_SetDeadbandPressure, dpMilliQanSetPressureDeadband);
  subscribeCMD(configDIM, DIM_MilliQan_SetDeadbandTemperature, dpMilliQanSetTemperatureDeadband);
  subscribeCMD(configDIM, DIM_MilliQan_SetDeadbandDewPoint, dpMilliQanSetDewpointDeadband);
  subscribeCMD(configDIM, DIM_MilliQan_SetDeadbandRelHumidity, dpMilliQanSetRelHumidityDeadband);
   
  DebugN("MilliQan Pressure sensor DIM subscription DONE");
  
//-----------------------------------------------  
  //BMP280 - current SX5 pressure measurement - 2017.05.12.
  //subscriptions
  subscribe(configDIM, DIM_SX5_programStartedAt, dpSX5ProgramStartedAt);
  subscribe(configDIM, DIM_SX5_uptime, dpSX5UpTime);
  subscribe(configDIM, DIM_SX5_measurementDelayValue, dpSX5MeasurementDelayValue);

  subscribe(configDIM, DIM_SX5_pressureHPa, dpSX5PressureHPa);
  subscribe(configDIM, DIM_SX5_temperature, dpSX5Temperature);
  subscribe(configDIM, DIM_SX5_dewpoint, dpSX5Dewpoint);
  subscribe(configDIM, DIM_SX5_relHumidity, dpSX5RelHumidity);
  subscribe(configDIM, DIM_SX5_height, dpSX5Height);

  subscribe(configDIM, DIM_SX5_DeadbandValuePressure, dpSX5pressureDeadbandValue);
  subscribe(configDIM, DIM_SX5_DeadbandValueTemperature, dpSX5tempDeadbandValue);
  subscribe(configDIM, DIM_SX5_DeadbandValueDewPoint, dpSX5dewpointDeadbandValue);
  subscribe(configDIM, DIM_SX5_DeadbandValueRelHumidity, dpSX5relHumDeadbandValue);

  subscribe(configDIM, DIM_SX5_readoutTimePressure, dpSX5pressureReadoutTime);
  subscribe(configDIM, DIM_SX5_readoutTimeTemperature, dpSX5temperatureReadoutTime);
  subscribe(configDIM, DIM_SX5_readoutTimeDewPoint, dpSX5dewpointReadoutTime);
  subscribe(configDIM, DIM_SX5_readoutTimeRelHumidity, dpSX5relHumidityReadoutTime);

  subscribe(configDIM, DIM_SX5_LockReadOutTogetherValue, dpSX5lockReadoutTogetherValue);  
  
  //commands
  subscribeCMD(configDIM, DIM_SX5_SetMeasDelay, dpSX5SetMeasDelay);
  subscribeCMD(configDIM, DIM_SX5_SetDeadbandLocking, dpSX5SetDeadbandLocking);

  subscribeCMD(configDIM, DIM_SX5_SetDeadbandPressure, dpSX5SetPressureDeadband);
  subscribeCMD(configDIM, DIM_SX5_SetDeadbandTemperature, dpSX5SetTemperatureDeadband);
  subscribeCMD(configDIM, DIM_SX5_SetDeadbandDewPoint, dpSX5SetDewpointDeadband);
  subscribeCMD(configDIM, DIM_SX5_SetDeadbandRelHumidity, dpSX5SetRelHumidityDeadband);
   
  DebugN("SX5 Pressure sensor DIM subscription DONE");
  
//-----------------------------------------------  
  //X0 water cooling measurements - 2017.06.06.
  //subscriptions 

  subscribe(configDIM, DIM_UXCCool_programStartedAt, dpUXCCoolProgramStartedAt);
  subscribe(configDIM, DIM_UXCCool_uptime, dpUXCCoolUpTime);

  subscribe(configDIM, DIM_UXCCool_ch00val, dpUXCCoolCH00values);
  subscribe(configDIM, DIM_UXCCool_ch01val, dpUXCCoolCH01values);
  subscribe(configDIM, DIM_UXCCool_ch02val, dpUXCCoolCH02values);
  subscribe(configDIM, DIM_UXCCool_ch03val, dpUXCCoolCH03values);
  subscribe(configDIM, DIM_UXCCool_ch04val, dpUXCCoolCH04values);
  subscribe(configDIM, DIM_UXCCool_ch05val, dpUXCCoolCH05values);
  subscribe(configDIM, DIM_UXCCool_ch06val, dpUXCCoolCH06values);
  subscribe(configDIM, DIM_UXCCool_ch07val, dpUXCCoolCH07values);

  subscribe(configDIM, DIM_UXCCool_ch00deadband, dpUXCCoolCH00deadband);
  subscribe(configDIM, DIM_UXCCool_ch01deadband, dpUXCCoolCH01deadband);
  subscribe(configDIM, DIM_UXCCool_ch02deadband, dpUXCCoolCH02deadband);
  subscribe(configDIM, DIM_UXCCool_ch03deadband, dpUXCCoolCH03deadband);
  subscribe(configDIM, DIM_UXCCool_ch04deadband, dpUXCCoolCH04deadband);
  subscribe(configDIM, DIM_UXCCool_ch05deadband, dpUXCCoolCH05deadband);
  subscribe(configDIM, DIM_UXCCool_ch06deadband, dpUXCCoolCH06deadband);
  subscribe(configDIM, DIM_UXCCool_ch07deadband, dpUXCCoolCH07deadband);

  subscribe(configDIM, DIM_UXCCool_DataRate, dpUXCCoolDataRate);
  
  //commands
  subscribeCMD(configDIM, DIM_UXCCool_ch00deadbandcmd, dpUXCCoolCH00deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch01deadbandcmd, dpUXCCoolCH01deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch02deadbandcmd, dpUXCCoolCH02deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch03deadbandcmd, dpUXCCoolCH03deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch04deadbandcmd, dpUXCCoolCH04deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch05deadbandcmd, dpUXCCoolCH05deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch06deadbandcmd, dpUXCCoolCH06deadbandcmd);
  subscribeCMD(configDIM, DIM_UXCCool_ch07deadbandcmd, dpUXCCoolCH07deadbandcmd);
   
  DebugN("UXC X0 Cooling Pressure DIM subscription DONE");  
  
//-----------------------------------------------  
  //BMP280 - current UGX pressure measurement - 2017.09.15.
  //subscriptions
  subscribe(configDIM, DIM_UGX_programStartedAt, dpUGXProgramStartedAt);
  subscribe(configDIM, DIM_UGX_uptime, dpUGXUpTime);
  subscribe(configDIM, DIM_UGX_measurementDelayValue, dpUGXMeasurementDelayValue);

  subscribe(configDIM, DIM_UGX_pressureHPa, dpUGXPressureHPa);
  subscribe(configDIM, DIM_UGX_temperature, dpUGXTemperature);
  subscribe(configDIM, DIM_UGX_dewpoint, dpUGXDewpoint);
  subscribe(configDIM, DIM_UGX_relHumidity, dpUGXRelHumidity);
  subscribe(configDIM, DIM_UGX_height, dpUGXHeight);

  subscribe(configDIM, DIM_UGX_DeadbandValuePressure, dpUGXpressureDeadbandValue);
  subscribe(configDIM, DIM_UGX_DeadbandValueTemperature, dpUGXtempDeadbandValue);
  subscribe(configDIM, DIM_UGX_DeadbandValueDewPoint, dpUGXdewpointDeadbandValue);
  subscribe(configDIM, DIM_UGX_DeadbandValueRelHumidity, dpUGXrelHumDeadbandValue);

  subscribe(configDIM, DIM_UGX_readoutTimePressure, dpUGXpressureReadoutTime);
  subscribe(configDIM, DIM_UGX_readoutTimeTemperature, dpUGXtemperatureReadoutTime);
  subscribe(configDIM, DIM_UGX_readoutTimeDewPoint, dpUGXdewpointReadoutTime);
  subscribe(configDIM, DIM_UGX_readoutTimeRelHumidity, dpUGXrelHumidityReadoutTime);

  subscribe(configDIM, DIM_UGX_LockReadOutTogetherValue, dpUGXlockReadoutTogetherValue);  
  
  //commands
  subscribeCMD(configDIM, DIM_UGX_SetMeasDelay, dpUGXSetMeasDelay);
  subscribeCMD(configDIM, DIM_UGX_SetDeadbandLocking, dpUGXSetDeadbandLocking);

  subscribeCMD(configDIM, DIM_UGX_SetDeadbandPressure, dpUGXSetPressureDeadband);
  subscribeCMD(configDIM, DIM_UGX_SetDeadbandTemperature, dpUGXSetTemperatureDeadband);
  subscribeCMD(configDIM, DIM_UGX_SetDeadbandDewPoint, dpUGXSetDewpointDeadband);
  subscribeCMD(configDIM, DIM_UGX_SetDeadbandRelHumidity, dpUGXSetRelHumidityDeadband);
   
  DebugN("UGX Pressure sensor DIM subscription DONE");
  
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
