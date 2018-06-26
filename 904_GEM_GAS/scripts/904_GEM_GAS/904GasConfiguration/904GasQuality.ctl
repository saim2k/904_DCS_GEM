main()
{

	timedFunc("CheckGasQuality", "GasQuality");  
}

CheckGasQuality(string GasQuality, time t1, time t2)
{


	string smtp_host = "smtp.cern.ch";
	dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
	int ret;
	string smtp_user = "qc8dcs.administrator@cern.ch";
	string smtp_pass = "CafaXari7";
	bool useTLS = TRUE;
	string sAttachPath =  "";

	float initial;
	dpGet("cms_gem_dcs_1:Initial_Timestamp.value", initial);
	DebugTN("Previous Timestamp = ", initial);

	float timestamp;
	dpGet("cms_gem_dcs_1:Ar_Timestamp.value",timestamp);
	DebugTN("Actual Timestamp = ", timestamp);

		if(timestamp != initial){
			DebugTN("Time is running...");
			dpSet("cms_gem_dcs_1:Initial_Timestamp.value",timestamp);	
		}
		else
		{
			DebugTN("Time is stuck!");

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", "The 904 Mixer publications are not updated! - Call the DCS expert!");
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

		}
}

