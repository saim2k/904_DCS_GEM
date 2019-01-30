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
dsEmail[1] = "+41754111681@mail2sms.cern.ch; noemi.beni@cern.ch; +41754115114@mail2sms.cern.ch; zoltan.szillasi@cern.ch"; // receiver
dsEmail[2] = "noemi.beni@cern.ch"; // sender
dsEmail[3] = makeDynString(sDeviceName+" problem");
dsEmail[4] = makeDynString(sDeviceName+": "+sInformation+" since "+currentTime); 

emSendMail(smtpServer,getHostname(), dsEmail, err); //for email and message
//DebugN(err);
//end function
return;
}
