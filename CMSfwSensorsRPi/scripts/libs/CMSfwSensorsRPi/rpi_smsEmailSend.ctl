#uses "email.ctl"

sendSmsEmail_To_Expert(string sDeviceName,string sInformation)
{ 
// email function 
int err;
string smtpServer;
dyn_string dsEmail;
string currentTime;
currentTime = getCurrentTime();
smtpServer = "cernmx.cern.ch";
dsEmail[1] = "+41754115722@mail2sms.cern.ch; ilaria.vai@cern.ch; +41754112109@mail2sms.cern.ch; 904-gem-dcs-notifications@cern.ch"; // receiver
dsEmail[2] = "noemi.beni@cern.ch"; // sender
dsEmail[3] = makeDynString(sDeviceName+" problem");
dsEmail[4] = makeDynString(sDeviceName+": "+sInformation+" since "+currentTime); 

emSendMail(smtpServer,getHostname(), dsEmail, err); //for email and message
//DebugN(err);
//end function
return;
}
