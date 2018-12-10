#uses "CMSfwSensorsRPi/rpi_smsEmailSend.ctl" 

main(){
  RPI_checkMachine("BaroP_RPI_QC8", "rpiControlPressureQC8");  
} 
void RPI_checkMachine(string machineName, string dpName) {  
  
  string dpEmailFlag=getSystemName()+dpName+".emailFlag";
  
  //Up Time:
  string dpUpTime=getSystemName()+dpName+".upTime";
  string dpIsUpTimeOK=getSystemName()+dpName+".isUpTimeOK";
  string messSum1="RPi ("+machineName+")";
  string mess1=machineName+", DIM conn lost or JAVA meas stopped";
  int timeInterval_UpTime1=120;
  
  startThread("RPI_checkValueChange", dpUpTime, dpIsUpTimeOK, dpEmailFlag, timeInterval_UpTime1, messSum1, mess1);
}

void RPI_checkValueChange(string dpToCheck, string dpFlag, string dpEmail, int interval, string messageSum, string message){
  int upTimeValue1=1;
  int upTimeValue2=2;
  string currTime;

  bool upTimeFlag;
  bool emailFlag;
  
  //DebugN(dpToCheck, getThreadId());
  
  //isUpTimeOK: TRUE - Green, FALSE - Red
  //emailFlag: TRUE - Green, FALSE - Red
//----------------------------------------------------------  
  //dp: measControl.emailFlag <- TRUE (alapertelmezesben)
  //If error and emailFlag == TRUE --> send e-mail, set this flag to FALSE, set the lastErrorMessage
  // --
  // Clear alarms on the main screen -->set measControl.emailFlag to TRUE
//-------------------------------------------------------------
  //Set LEDs to TRUE
  if(!dpExists(dpFlag) || !dpExists(dpEmail)){
    DebugN("dpe"+dpFlag+" or "+dpEmail+" are not exists");
    return;
  }  
  dpSet(dpFlag, TRUE); //clear isUpTimeOK
  dpSet(dpEmail, TRUE); //clear emailFlag
   do {
    dpGet(dpToCheck, upTimeValue1);
    delay(interval); //delay in sec between 2 readings
    dpGet(dpToCheck, upTimeValue2);
    if (upTimeValue1<upTimeValue2){
      dpSet(dpFlag, TRUE);
      //DebugN("value OK");
    } else if (upTimeValue1==-1 && upTimeValue2==-1){
      dpSet(dpFlag, TRUE);
      //DebugN("-1 value, OK", dpToCheck);
    } else {
      currTime = getCurrentTime();
      dpSet(dpFlag, FALSE);
      DebugN("Value to check not OK", dpToCheck, getCurrentTime());
    }
    dpGet(dpFlag, upTimeFlag);
    dpGet(dpEmail, emailFlag);
    if(upTimeFlag==FALSE && emailFlag==TRUE){
      DebugN("send mail", getCurrentTime());
      //DebugN(messageSum, message);
      sendSmsEmail_To_Expert(messageSum, message);
      dpSet(dpEmail, FALSE);
    }
  }while (1);
  
}


/*void main(){
  //For Measurement status (upTime)

  int upTimeValue1=1;
  int upTimeValue2=2;
  string currTime;

  bool upTimeFlag;
  bool emailFlag;
  
  string dpUpTime=getSystemName()+"rpiControlPressureQC8.upTime";
  string dpIsUpTimeOK=getSystemName()+"rpiControlPressureQC8.isUpTimeOK";
  string dpEmailFlag=getSystemName()+"rpiControlPressureQC8.emailFlag";
  
  //isUpTimeOK: TRUE - Green, FALSE - Red
  //emailFlag: TRUE - Green, FALSE - Red
//----------------------------------------------------------  
  //dp: measControl.emailFlag <- TRUE (alapertelmezesben)
  //If error and emailFlag == TRUE --> send e-mail, set this flag to FALSE, set the lastErrorMessage
  // --
  // Clear alarms on the main screen -->set measControl.emailFlag to TRUE
//-------------------------------------------------------------
  //Set LEDs to TRUE
  if(!dpExists(dpIsUpTimeOK) || !dpExists(dpEmailFlag)){
    DebugN("dpe rpiControlPressureUXC.isUpTimeOK or rpiControlPressureUXC.emailFlag are not exists");
    return;
  }  
  dpSet(dpIsUpTimeOK, TRUE); //clear isUpTimeOK
  dpSet(dpEmailFlag, TRUE); //clear emailFlag
   do {
    dpGet(dpUpTime, upTimeValue1);
    delay(3); //delay in sec between 2 readings
    dpGet(dpUpTime, upTimeValue2);
    if (upTimeValue1<upTimeValue2){
      dpSet(dpIsUpTimeOK, TRUE);
      //DebugN("UpTime OK");
    } else {
      currTime = getCurrentTime();
      dpSet(dpIsUpTimeOK, FALSE);
      //DebugN("UpTime not OK", getCurrentTime());
     // delay(10);
    }
    dpGet(dpIsUpTimeOK, upTimeFlag);
    dpGet(dpEmailFlag, emailFlag);
    if(upTimeFlag==FALSE && emailFlag==TRUE){
      DebugN("send mail", getCurrentTime());
      sendSmsEmail_To_Expert("DIM or JAVA meas (Raspberry Pi project - UXC pressure)", "DIM connection lost or JAVA meas prog stopped");
      dpSet(dpEmailFlag, FALSE);
    }
  }while (1);

}
*/
