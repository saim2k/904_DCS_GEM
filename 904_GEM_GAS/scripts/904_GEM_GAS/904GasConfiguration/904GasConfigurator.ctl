main()
{
  dyn_errClass err;
    
  dyn_string Input;
    Input = makeDynString("Ar_FSR.value","CO2_FSR.value", "Ar_Capacity.value", "CO2_Capacity.value"); 

    
  dpConnect("Calculate", Input);
  
  dpConnect("HandleArPer", "Ar_Real.value");
  	dpConnect("HandleArBoolean", "ArPerBoolean.value");
  dpConnect("HandleCO2Per", "CO2_Real.value");
  	dpConnect("HandleCO2Boolean", "CO2PerBoolean.value");
  dpConnect("HandleArFlow", "Ar_Flow.value");
  	dpConnect("HandleArFBoolean", "ArFlowBoolean.value");
  dpConnect("HandleCO2Flow", "CO2_Flow.value");
  	dpConnect("HandleCO2FBoolean", "CO2FlowBoolean.value");
  dpConnect("HandleTotalFlow", "TotalFlow.value");
  	dpConnect("HandleTotalBoolean", "TotalFlowBoolean.value");

  
    err = getLastError();
      if(dynlen(err)>0)
         DebugTN(err);
      
  
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Calculate real %

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

HandleArPer(string dp, float value)
{
	bool flag;
	dpGet("cms_gem_dcs_1:ArPerBoolean.value", flag);
	DebugTN("Ar flag", flag);
	
	if((value < 64 || value > 71) && !flag)
	{
		dpSet("cms_gem_dcs_1:ArPerBoolean.value",1);
	}
}


HandleArBoolean(string dp, bool value)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "CafaXari7";
bool useTLS = TRUE;
string sAttachPath =  "";

	if(value)
	{	
		int n=0;
		while(n<6)
		{
			DebugTN("Waiting 180 sec..");
			delay(30);
			n++;
		}

		float x; 
		dpGet("Ar_Real.value", x);

		DebugTN("Ar % = ", x);
		if(x < 64 || (x > 71 && x < 72.5))
		{
			
			string textMessage = "The 904 Ar % value is not optimal - Check it! - Actual Ar % = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				delay(5);
				dpSet("cms_gem_dcs_1:ArPerBoolean.value",0);

		}
		else if(x >= 72.5)
		{

			string textMessage = "The 904 Ar % was > 72.5% for more than 180 sec! The detector protection is being activated!! - Actual Ar % = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				dpSet("cms_gem_dcs_1:WrongMixture.value",1);
				DebugTN("Detector protection condition activated!"); 

				delay(5);
				dpSet("cms_gem_dcs_1:ArPerBoolean.value",0);
		}
		else
		{
			dpSet("cms_gem_dcs_1:ArPerBoolean.value",0);
		}
	}
	else
	{
		DebugTN("Ar % OK");
	}

}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert CO2 %

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

HandleCO2Per(string dp, float value)
{
	bool flag;
	dpGet("cms_gem_dcs_1:CO2PerBoolean.value", flag);
	DebugTN("CO2 flag", flag);
	
	if((value < 29 || value > 36) && !flag)
	{
		dpSet("cms_gem_dcs_1:CO2PerBoolean.value",1);
	}
}


HandleCO2Boolean(string dp, bool value)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "CafaXari7";
bool useTLS = TRUE;
string sAttachPath =  "";

	if(value)
	{	
		int n=0;
		while(n<6)
		{
			DebugTN("Waiting 180 sec..");
			delay(30);
			n++;
		}

		float x; 
		dpGet("CO2_Real.value", x);

		DebugTN("CO2 % = ", x);
		if((x> 27.5 && x < 29) || x > 36 )
		{

			string textMessage = "The 904 CO2 % value is not optimal - Check it! - Actual CO2 % = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				delay(5);
				dpSet("cms_gem_dcs_1:CO2PerBoolean.value",0);

		}
		else if(x <= 27.5)
		{

			string textMessage = "The 904 CO2 % was < 27.5% for more than 180 sec! Check the gas status immediately! - Actual CO2 % = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				//dpSet("cms_gem_dcs_1:WrongMixture.value",1);
				//DebugTN("Detector protection condition activated!"); 

				delay(5);
				dpSet("cms_gem_dcs_1:CO2PerBoolean.value",0);
		}
		else
		{
			dpSet("cms_gem_dcs_1:CO2PerBoolean.value",0);
		}
	}
	else
	{
		DebugTN("CO2 % OK");
	}

}



    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert Ar Flow

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

HandleArFlow(string dp, float value)
{
	bool flag;
	dpGet("cms_gem_dcs_1:ArFlowBoolean.value", flag);
	DebugTN("Ar Flow flag", flag);
	
	if(value < 0.1 && !flag)
	{
		dpSet("cms_gem_dcs_1:ArFlowBoolean.value",1);
	}
}


HandleArFBoolean(string dp, bool value)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "CafaXari7";
bool useTLS = TRUE;
string sAttachPath =  "";

	if(value)
	{	
		int n=0;
		while(n<6)
		{
			DebugTN("Waiting 180 sec..");
			delay(30);
			n++;
		}

		float x; 
		dpGet("Ar_Flow.value", x);

		DebugTN("Ar Flow = ", x);
		if(x > 0.05 && x < 0.1)
		{

			string textMessage = "The 904 Ar flow value is not optimal - Check it! - Actual Ar flow = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				delay(5);
				dpSet("cms_gem_dcs_1:ArFlowBoolean.value",0);

		}
		else if(x <= 0.05)
		{

			string textMessage = "The 904 Ar Flow was < 0.05 ln/min for more than 180 sec! Check the gas status immediately! - Actual Ar flow = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				//dpSet("cms_gem_dcs_1:WrongMixture.value",1);
				//DebugTN("Detector protection condition activated!"); 

				delay(5);
				dpSet("cms_gem_dcs_1:ArFlowBoolean.value",0);
		}
		else
		{
			dpSet("cms_gem_dcs_1:ArFlowBoolean.value",0);
		}
	}
	else
	{
		DebugTN("Ar Flow OK");
	}

}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert CO2 Flow

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

HandleCO2Flow(string dp, float value)
{
	bool flag;
	dpGet("cms_gem_dcs_1:CO2FlowBoolean.value", flag);
	DebugTN("CO2 Flow flag", flag);
	
	if(value < 0.1 && !flag)
	{
		dpSet("cms_gem_dcs_1:CO2FlowBoolean.value",1);
	}
}


HandleCO2FBoolean(string dp, bool value)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "CafaXari7";
bool useTLS = TRUE;
string sAttachPath =  "";

	if(value)
	{	
		int n=0;
		while(n<6)
		{
			DebugTN("Waiting 180 sec..");
			delay(30);
			n++;
		}

		float x; 
		dpGet("CO2_Flow.value", x);

		DebugTN("CO2 Flow = ", x);
		if(x > 0.05 && x < 0.1)
		{

			string textMessage = "The 904 CO2 flow value is not optimal - Check it! - Actual CO2 flow = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				delay(5);
				dpSet("cms_gem_dcs_1:CO2FlowBoolean.value",0);

		}
		else if(x <= 0.05)
		{

			string textMessage = "The 904 CO2 Flow was < 0.05 ln/min for more than 180 sec! The detector protection is being activated! - Actual CO2 flow = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				dpSet("cms_gem_dcs_1:WrongFlow.value",1);
				DebugTN("Detector protection condition activated!"); 

				delay(5);
				dpSet("cms_gem_dcs_1:CO2FlowBoolean.value",0);
		}
		else
		{
			dpSet("cms_gem_dcs_1:CO2FlowBoolean.value",0);
		}
	}
	else
	{
		DebugTN("CO2 Flow OK");
	}

}


    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Configure alert Ar Flow

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

HandleTotalFlow(string dp, float value)
{
	bool flag;
	dpGet("cms_gem_dcs_1:TotalFlowBoolean.value", flag);
	DebugTN("Total Flow flag", flag);
	
	if(value < 0.1 && !flag)
	{
		dpSet("cms_gem_dcs_1:TotalFlowBoolean.value",1);
	}
}


HandleTotalBoolean(string dp, bool value)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "CafaXari7";
bool useTLS = TRUE;
string sAttachPath =  "";

	if(value)
	{	
		int n=0;
		while(n<6)
		{
			DebugTN("Waiting 180 sec..");
			delay(30);
			n++;
		}

		float x; 
		dpGet("TotalFlow.value", x);

		DebugTN("Total Flow = ", x);
		if(x > 0.05 && x < 0.1)
		{

			string textMessage = "The 904 Total flow value is not optimal - Check it! - Actual Total flow = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Warning", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				delay(5);
				dpSet("cms_gem_dcs_1:TotalFlowBoolean.value",0);

		}
		else if(x <= 0.05)
		{

			string textMessage = "The 904 Total Flow was < 0.05 ln/min for more than 180 sec! Check the gas status immediately! - Actual Total flow = " + x;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 Gas Error", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

				//dpSet("cms_gem_dcs_1:WrongMixture.value",1);
				//DebugTN("Detector protection condition activated!"); 

				delay(5);
				dpSet("cms_gem_dcs_1:TotalFlowBoolean.value",0);
		}
		else
		{
			dpSet("cms_gem_dcs_1:TotalFlowBoolean.value",0);
		}
	}
	else
	{
		DebugTN("Total Flow OK");
	}

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////




