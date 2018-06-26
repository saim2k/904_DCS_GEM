main()
{
  dyn_errClass err;
    
  dyn_string Input;
    Input = makeDynString("Ar_FSR.value","CO2_FSR.value", "Ar_Capacity.value", "CO2_Capacity.value"); 

    
  dpConnect("Calculate", Input);
  
  dpConnect("ConfigureArPer", "Ar_Real.value");
  dpConnect("ConfigureCO2Per", "CO2_Real.value");
  dpConnect("ConfigureArFlow", "Ar_Flow.value");
  dpConnect("ConfigureCO2Flow", "CO2_Flow.value");
  dpConnect("ConfigureTotalFlow", "TotalFlow.value");

  
    err = getLastError();
      if(dynlen(err)>0)
         DebugTN(err);
      
  
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Calculate real %

Calculate(dyn_string Input, dyn_float value)
{
       
  dyn_errClass errTotal;

  float Ar_Flow, CO2_Flow, TotalFlow, Real_Ar, Real_CO2;  
  
    Ar_Flow = value[3]* value[1]/100;
    CO2_Flow = value[4]* value[2]/100;  
  
    TotalFlow = Ar_Flow + CO2_Flow;
    Real_Ar = Ar_Flow/TotalFlow *100;
    Real_CO2 = CO2_Flow/TotalFlow *100;
  
  dpSet("Ar_Flow.value", Ar_Flow);
  dpSet("CO2_Flow.value", CO2_Flow);  
  dpSet("TotalFlow.value", TotalFlow);
  dpSet("Ar_Real.value", Real_Ar);
  dpSet("CO2_Real.value", Real_CO2);
  
    
      errTotal = getLastError();
      if(dynlen(errTotal)>0)
        DebugTN(errTotal);
      
//   DebugTN("Ar Flow = ", Ar_Flow);
//   DebugTN("CO2 Flow = ", CO2_Flow);  
//   DebugTN("Total = ", TotalFlow);
//   DebugTN("Ar % = ", Real_Ar);
//   DebugTN("CO2 % = ", Real_CO2);
   
    
}
    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert Ar %

ConfigureArPer(string dp, float value)
{

//Deactivating all the alerts  
  
  dyn_string exceptionInfo;
  
  float arPer;
  dyn_float limits;
    limits = makeDynFloat(67.5,69,71,72.5);
  dyn_string alertClass;
    alertClass = makeDynString("_fwErrorAck_70.","_fwWarningAck_50.","","_fwWarningAck_50.","_fwErrorAck_70.");  
  string dpAlias;
    dpAlias = dpGetAlias("cms_gem_dcs_1:Ar_Real."); 
  dyn_string alertText;
    alertText = makeDynString("Error: "+dpAlias+" Too Low Ar %", "Warning: "+dpAlias+" Too Low Ar %", "OK", "Warning: "+dpAlias+" High Ar %", "Error: "+dpAlias+" Too High Ar %");  
  string alertPanel, alertHelp;
  dyn_string summary, alertPanelParameters;
      
  
//Evaluate Ar % status  
  
  if(value<= 69 || value >= 71){
    DebugTN("Ar % = ", value);
    DebugTN("Ar % value out of range, waiting confirmation...");
      delay(180);
      dpGet("Ar_Real.value", arPer);
    DebugTN("arPer = ", arPer);
    if(arPer <= 69 || arPer >= 71){
      DebugTN("Confirmation received. Activating alert.");
        fwAlertConfig_set("cms_gem_dcs_1:Ar_Real.value", DPCONFIG_ALERT_NONBINARYSIGNAL, alertText, limits, alertClass, summary, alertPanel, alertPanelParameters, alertHelp, exceptionInfo);   
        fwAlertConfig_activate("cms_gem_dcs_1:Ar_Real.value", exceptionInfo);
      DebugTN("Alert activated");
	if(arPer >= 72.5){
		dpSet("cms_gem_dcs_1:WrongMixture.value",1);
		DebugTN("Detector protection condition activated!");
	}
    }
    else{
      fwAlertConfig_deactivate("cms_gem_dcs_1:Ar_Real.value", exceptionInfo); 
      DebugTN("Ar % value back to normal = ", arPer);  
      dpSet("cms_gem_dcs_1:WrongMixture.value",0); //No detector protection condition	
    }
  }
  else{
    DebugTN("Ar % = ", value);  
    DebugTN("Ar % value normal");
    dpSet("cms_gem_dcs_1:WrongMixture.value",0); //No detector protection condition
  }

}
  
////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert CO2 %

ConfigureCO2Per(string dp, float value)
{

  dyn_string exceptionInfo;
  
  float CO2Per;
  dyn_float limits;
    limits = makeDynFloat(27.5,29,31,32.5);
  dyn_string alertClass;
    alertClass = makeDynString("_fwErrorAck_70.","_fwWarningAck_50.","","_fwWarningAck_50.","_fwErrorAck_70.");  
  string dpAlias;
    dpAlias = dpGetAlias("cms_gem_dcs_1:CO2_Real."); 
  dyn_string alertText;
    alertText = makeDynString("Error: "+dpAlias+" Too Low CO2 %", "Warning: "+dpAlias+" Too Low CO2 %", "OK", "Warning: "+dpAlias+" High CO2 %", "Error: "+dpAlias+" Too High CO2 %");  
  string alertPanel, alertHelp;
  dyn_string summary, alertPanelParameters;

//Evaluate CO2 % status  
  
  if(value <= 29 || value >= 31){
    DebugTN("CO2 % = ", value);
    DebugTN("CO2 % value out of range, waiting confirmation...");
      delay(180);
      dpGet("CO2_Real.value", CO2Per);
    DebugTN("CO2Per = ", CO2Per);
    if(CO2Per <= 29 || CO2Per >= 31){
      DebugTN("Confirmation received. Activating alert.");
        fwAlertConfig_set("cms_gem_dcs_1:CO2_Real.value", DPCONFIG_ALERT_NONBINARYSIGNAL, alertText, limits, alertClass, summary, alertPanel, alertPanelParameters, alertHelp, exceptionInfo);   
        fwAlertConfig_activate("cms_gem_dcs_1:CO2_Real.value", exceptionInfo);
      DebugTN("Alert activated");
    }
    else{
      DebugTN("CO2 % value back to normal = ", CO2Per); 
      fwAlertConfig_deactivate("cms_gem_dcs_1:CO2_Real.value", exceptionInfo);   
 
    }
  }
  else{
    DebugTN("CO2 % = ", value);  
    DebugTN("CO2 % value normal");
  }

}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert Ar Flow


ConfigureArFlow(string dp, float value)
{

//Deactivating all the alerts  
  
  dyn_string exceptionInfo;

  float arFlow;
  dyn_float limits;
    limits = makeDynFloat(0.05,0.1);
  dyn_string alertClass;
    alertClass = makeDynString("_fwErrorAck_70.","_fwWarningAck_50.","");  
  string dpAlias;
    dpAlias = dpGetAlias("cms_gem_dcs_1:Ar_Flow."); 
  dyn_string alertText;
    alertText = makeDynString("Error: "+dpAlias+" Too Low Ar Flow", "Warning: "+dpAlias+" Too Low Ar Flow", "OK");  
  string alertPanel, alertHelp;
  dyn_string summary, alertPanelParameters;

  
//Evaluate Ar Flow status  
  
  if(value <= 0.1){
    DebugTN("Ar Flow = ", value);
    DebugTN("Ar Flow value out of range, waiting confirmation...");
      delay(180);
      dpGet("Ar_Flow.value", arFlow);
    DebugTN("arFlow = ", arFlow);
    if(arFlow <= 0.1){
      DebugTN("Confirmation received. Activating alert.");
      fwAlertConfig_set("cms_gem_dcs_1:Ar_Flow.value", DPCONFIG_ALERT_NONBINARYSIGNAL, alertText, limits, alertClass, summary, alertPanel, alertPanelParameters, alertHelp, exceptionInfo);   
      fwAlertConfig_activate("cms_gem_dcs_1:Ar_Flow.value", exceptionInfo);
      DebugTN("Alert activated");
    }
    else{
      DebugTN("Ar Flow value back to normal = ", arFlow); 
      fwAlertConfig_deactivate("cms_gem_dcs_1:Ar_Flow.value", exceptionInfo); 
 
    }
  }
  else{
    DebugTN("Ar Flow = ", value);  
    DebugTN("Ar Flow value normal");
  }

}
  
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert CO2 Flow

ConfigureCO2Flow(string dp, float value)
{

  dyn_string exceptionInfo;
  
  float CO2Flow;
  dyn_float limits;
    limits = makeDynFloat(0.05,0.1);
  dyn_string alertClass;
    alertClass = makeDynString("_fwErrorAck_70.","_fwWarningAck_50.","");  
  string dpAlias;
    dpAlias = dpGetAlias("cms_gem_dcs_1:CO2_Flow."); 
  dyn_string alertText;
    alertText = makeDynString("Error: "+dpAlias+" Too Low CO2 Flow", "Warning: "+dpAlias+" Too Low CO2 Flow", "OK");  
  string alertPanel, alertHelp;
  dyn_string summary, alertPanelParameters;

  
//Evaluate CO2 Flow status  
  
  if(value <= 0.1){
    DebugTN("CO2 Flow = ", value);
    DebugTN("CO2 Flow value out of range, waiting confirmation...");
      delay(180);
      dpGet("CO2_Flow.value", CO2Flow);
    DebugTN("CO2Flow = ", CO2Flow);
    if(CO2Flow <= 0.1){
      DebugTN("Confirmation received. Activating alert.");
      fwAlertConfig_set("cms_gem_dcs_1:CO2_Flow.value", DPCONFIG_ALERT_NONBINARYSIGNAL, alertText, limits, alertClass, summary, alertPanel, alertPanelParameters, alertHelp, exceptionInfo);   
      fwAlertConfig_activate("cms_gem_dcs_1:CO2_Flow.value", exceptionInfo);
      DebugTN("Alert activated");
      if(CO2Flow <= 0.05){
		dpSet("cms_gem_dcs_1:WrongFlow.value",1);
		DebugTN("Detector protection condition activated!");
	}
    }
    else{
      DebugTN("CO2 Flow value back to normal = ", CO2Flow); 
      fwAlertConfig_deactivate("cms_gem_dcs_1:CO2_Flow.value", exceptionInfo);   
      dpSet("cms_gem_dcs_1:WrongFlow.value",0);  //No detector protection condition
    }
  }
  else{
    DebugTN("CO2 Flow = ", value);  
    DebugTN("CO2 Flow value normal");
    dpSet("cms_gem_dcs_1:WrongFlow.value",0);  //No detector protection condition
  }

}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert Total Flow

ConfigureTotalFlow(string dp, float value)
{

  dyn_string exceptionInfo;
  
  float TotalFlow;
  dyn_float limits;
    limits = makeDynFloat(0.05,0.1);
  dyn_string alertClass;
    alertClass = makeDynString("_fwErrorAck_70.","_fwWarningAck_50.","");  
  string dpAlias;
    dpAlias = dpGetAlias("cms_gem_dcs_1:TotalFlow."); 
  dyn_string alertText;
    alertText = makeDynString("Error: "+dpAlias+" Too Low Total Flow", "Warning: "+dpAlias+" Too Low Total Flow", "OK");  
  string alertPanel, alertHelp;
  dyn_string summary, alertPanelParameters;

  
//Evaluate Total Flow status  
  
  if(value <= 0.1){
    DebugTN("Total Flow = ", value);
    DebugTN("Total Flow value out of range, waiting confirmation...");
      delay(180);
      dpGet("TotalFlow.value", TotalFlow);
    DebugTN("Total Flow = ", TotalFlow);
    if(TotalFlow <= 0.1){
      DebugTN("Confirmation received. Activating alert.");
      fwAlertConfig_set("cms_gem_dcs_1:TotalFlow.value", DPCONFIG_ALERT_NONBINARYSIGNAL, alertText, limits, alertClass, summary, alertPanel, alertPanelParameters, alertHelp, exceptionInfo);   
      fwAlertConfig_activate("cms_gem_dcs_1:TotalFlow.value", exceptionInfo);
      DebugTN("Alert activated");
    }
    else{
      DebugTN("Total Flow value back to normal = ", TotalFlow); 
      fwAlertConfig_deactivate("cms_gem_dcs_1:TotalFlow.value", exceptionInfo);   
    }
  }
  else{
    DebugTN("Total Flow = ", value);  
    DebugTN("Total Flow value normal");
  }

}

      


