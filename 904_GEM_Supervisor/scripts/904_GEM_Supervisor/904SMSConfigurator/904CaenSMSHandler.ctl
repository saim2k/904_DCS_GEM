main()
{
  dyn_errClass err;

   dyn_string Tripflags = dpNames("cms_gem_dcs_1:channel*.Trip", "AlarmFlags");
   //DebugTN(Tripflags);

   dyn_string OvVflags = dpNames("cms_gem_dcs_1:channel*.OvV", "AlarmFlags");
   //DebugTN(OvVflags);

   dyn_string UnVflags = dpNames("cms_gem_dcs_1:channel*.UnV", "AlarmFlags");
   //DebugTN(UnVflags);

   dyn_string OvCflags = dpNames("cms_gem_dcs_1:channel*.OvC", "AlarmFlags");
   //DebugTN(OvCflags);

   dyn_string externalDisableflags = dpNames("cms_gem_dcs_1:channel*.externalDisable", "AlarmFlags");
   //DebugTN(externalDisableflags);

   dyn_string statusflags = dpNames("cms_gem_dcs_1:channel*.status", "AlarmFlags");
   //DebugTN(statusflags);
    
    
  dyn_string channels = makeDynString("cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard00/channel001.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard00/channel000.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard00/channel003.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard00/channel002.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard00/channel005.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard00/channel004.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard04/channel001.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard04/channel000.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard04/channel003.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard04/channel002.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard04/channel005.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard04/channel004.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard08/channel001.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard08/channel000.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard08/channel003.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard08/channel002.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard08/channel005.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard08/channel004.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard12/channel001.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard12/channel000.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard12/channel003.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard12/channel002.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard12/channel005.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard12/channel004.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard16/channel001.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard16/channel000.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard16/channel003.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard16/channel002.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard16/channel005.",
                                      "cms_gem_dcs_1:CAEN/904_HV_mainframe/branchController14/easyCrate0/easyBoard16/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board01/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board02/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board03/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board04/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board05/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board06/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board07/channel013.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel000.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel001.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel002.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel003.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel004.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel005.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel006.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel007.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel008.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel009.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel010.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel011.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel012.",
"cms_gem_dcs_1:CAEN/904_HV_mainframe/board08/channel013.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel000.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel001.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel002.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel003.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel004.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel005.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel006.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel007.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel008.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel009.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel010.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel011.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel012.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board10/channel013.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel000.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel001.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel002.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel003.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel004.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel005.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel006.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel007.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel008.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel009.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel010.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel011.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel012.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board11/channel013.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel000.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel001.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel002.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel003.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel004.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel005.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel006.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel007.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel008.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel009.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel010.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel011.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel012.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board12/channel013.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel000.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel001.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel002.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel003.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel004.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel005.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel006.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel007.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel008.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel009.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel010.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel011.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel012.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board13/channel013.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel000.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel001.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel002.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel003.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel004.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel005.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel006.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel007.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel008.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel009.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel010.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel011.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel012.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board14/channel013.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel000.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel001.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel002.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel003.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel004.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel005.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel006.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel007.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel008.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel009.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel010.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel011.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel012.",
"cms_gem_dcs_1:CAEN/904_Shared_mainframe/board15/channel013."
                                      );


for(int i=1; i<dynlen(channels)+1; i++){

  dpConnect("HandleTrip", channels[i]+"actual.Trip", Tripflags[i]+":_original.._value");
  dpConnect("HandleOvC", channels[i]+"actual.OvC", OvCflags[i]+":_original.._value");
  dpConnect("HandleOvV", channels[i]+"actual.OvV", OvVflags[i]+":_original.._value");
  dpConnect("HandleUnV", channels[i]+"actual.UnV", UnVflags[i]+":_original.._value");
  dpConnect("HandleexternalDisable", channels[i]+"actual.externalDisable", externalDisableflags[i]+":_original.._value");
  dpConnect("Handlestatus", channels[i]+"actual.status", statusflags[i]+":_original.._value");

}
  
    err = getLastError();
      if(dynlen(err)>0)
         DebugTN(err);
      
  
}







HandleTrip(string dp, bool value, string flagdp, bool flag)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "WasuMuwi85";
bool useTLS = TRUE;
string sAttachPath =  "";

// extract the dp alias
	dyn_string split;
	split = strsplit(dp, ":");

		string substring;
		substring = split[1]+":"+split[2];


			dyn_string subsplit;
			subsplit=strsplit(substring, ".");

				string dpname;
				dpname = subsplit[1]+".";

string alias;
 alias = dpGetAlias(dpname);

// alias found --> check if sms has to be sent


	if(value)
	{	
		
		if(flag){

			DebugTN("Alarm for channel " + dp + "already sent. Flag is going to be cleared in 60 min");
			delay(3600);
			dpSet(flagdp,0);
			DebugTN("Trip Flag Cleared " + dp);

		
		}
		
		else{			
			string textMessage = "904 DCS Message - Trip on channel " + alias;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

/*			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: Trip", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
*/
				delay(1);
				dpSet(flagdp,1);
				DebugTN("Trip Flag Set " + dp);


		}
  }
	else{
		if(flag){
			dpSet(flagdp,0);
			//DebugTN("Trip Flag Cleared " + dp);
		}


	}


}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


HandleOvV(string dp, bool value, string flagdp, bool flag)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "WasuMuwi85";
bool useTLS = TRUE;
string sAttachPath =  "";

// extract the dp alias
	dyn_string split;
	split = strsplit(dp, ":");

		string substring;
		substring = split[1]+":"+split[2];


			dyn_string subsplit;
			subsplit=strsplit(substring, ".");

				string dpname;
				dpname = subsplit[1]+".";

string alias;
 alias = dpGetAlias(dpname);

// alias found --> check if sms has to be sent

	if(value)
	{	
		

		if(flag){

			DebugTN("Alarm for channel " + dp + "already sent. Flag is going to be cleared in 60 min");
			delay(3600);
			dpSet(flagdp,0);
			DebugTN("OvV Flag Cleared " + dp);

		
		}
		
		else{			
			string textMessage = "904 DCS Message - OvV on channel " + alias;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

/*			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvV", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
*/
				delay(1);
				dpSet(flagdp,1);
				DebugTN("OvV Flag Set " + dp);


		}
  }
	else{

		if(flag){
			dpSet(flagdp,0);
			//DebugTN("Trip Flag Cleared " + dp);
		}



	}


}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

HandleOvC(string dp, bool value, string flagdp, bool flag)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "WasuMuwi85";
bool useTLS = TRUE;
string sAttachPath =  "";

// extract the dp alias
	dyn_string split;
	split = strsplit(dp, ":");

		string substring;
		substring = split[1]+":"+split[2];


			dyn_string subsplit;
			subsplit=strsplit(substring, ".");

				string dpname;
				dpname = subsplit[1]+".";

string alias;
 alias = dpGetAlias(dpname);

// alias found --> check if sms has to be sent

	if(value)
	{	
		

		if(flag){

			DebugTN("Alarm for channel " + dp + "already sent. Flag is going to be cleared in 60 min");
			delay(3600);
			dpSet(flagdp,0);
			DebugTN("OvC Flag Cleared " + dp);

		
		}
		
		else{			
			string textMessage = "904 DCS Message - OvC on channel " + alias;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

/*			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: OvC", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
*/
				delay(1);
				dpSet(flagdp,1);
				DebugTN("OvC Flag Set " + dp);


		}
  }
	else{

		if(flag){
			dpSet(flagdp,0);
			//DebugTN("Trip Flag Cleared " + dp);
		}



	}



}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


HandleUnV(string dp, bool value, string flagdp, bool flag)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "WasuMuwi85";
bool useTLS = TRUE;
string sAttachPath =  "";

// extract the dp alias
	dyn_string split;
	split = strsplit(dp, ":");

		string substring;
		substring = split[1]+":"+split[2];


			dyn_string subsplit;
			subsplit=strsplit(substring, ".");

				string dpname;
				dpname = subsplit[1]+".";

string alias;
 alias = dpGetAlias(dpname);

// alias found --> check if sms has to be sent

	if(value)
	{	
		
		if(flag){

			DebugTN("Alarm for channel " + dp + "already sent. Flag is going to be cleared in 60 min");
			delay(3600);
			dpSet(flagdp,0);
			DebugTN("UnV Flag Cleared " + dp);

		
		}
		
		else{			
			string textMessage = "904 DCS Message - UnV on channel " + alias;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

/*			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: UnV", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
*/
				delay(1);
				dpSet(flagdp,1);
				DebugTN("UnV Flag Set " + dp);


		}
  }
	else{

		if(flag){
			dpSet(flagdp,0);
			//DebugTN("Trip Flag Cleared " + dp);
		}



	}


}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


HandleexternalDisable(string dp, bool value, string flagdp, bool flag)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "WasuMuwi85";
bool useTLS = TRUE;
string sAttachPath =  "";

// extract the dp alias
	dyn_string split;
	split = strsplit(dp, ":");

		string substring;
		substring = split[1]+":"+split[2];


			dyn_string subsplit;
			subsplit=strsplit(substring, ".");

				string dpname;
				dpname = subsplit[1]+".";

string alias;
 alias = dpGetAlias(dpname);

// alias found --> check if sms has to be sent

	if(value)
	{	
		

		if(flag){

			DebugTN("Alarm for channel " + dp + "already sent. Flag is going to be cleared in 60 min");
			delay(3600);
			dpSet(flagdp,0);
			DebugTN("external Disable Flag Cleared " + dp);

		
		}
		
		else{			
			string textMessage = "904 DCS Message - externalDisable on channel " + alias;

			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
/*
			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: externalDisable", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
*/
				delay(1);
				dpSet(flagdp,1);
				DebugTN("external Disable Flag Set " + dp);
  		}
  }
	else{

		if(flag){
			dpSet(flagdp,0);
			//DebugTN("Trip Flag Cleared " + dp);
		}

  	}



}


Handlestatus(string dp, int value, string flagdp, bool flag)
{

string smtp_host = "smtp.cern.ch";
dyn_string email1,email2,email3,email4,email5,email6,email7,email8;
int ret;
string smtp_user = "qc8dcs.administrator@cern.ch";
string smtp_pass = "WasuMuwi85";
bool useTLS = TRUE;
string sAttachPath =  "";

// extract the dp alias
	dyn_string split;
	split = strsplit(dp, ":");

		string substring;
		substring = split[1]+":"+split[2];


			dyn_string subsplit;
			subsplit=strsplit(substring, ".");

				string dpname;
				dpname = subsplit[1]+".";

string alias;
 alias = dpGetAlias(dpname);

// alias found --> check if sms has to be sent

	if(value>=64)
	{	
		
		
		if(flag){

			DebugTN("Alarm for channel " + dp + "already sent. Flag is going to be cleared in 60 min");
			delay(3600);
			dpSet(flagdp,0);
			DebugTN("status Flag Cleared " + dp);

		
		}
		
		else{			
			string textMessage = "904 DCS Message - faulty status on channel " + alias + ". Status is = " + value;
      
			email1 = makeDynString("904-gem-dcs-notifications@cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email1, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

/*			email2 = makeDynString("+41754116971@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email2, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email3 = makeDynString("+41754112109@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email3, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email4 = makeDynString("+41754110705@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email4, ret, smtp_user, smtp_pass, useTLS, sAttachPath); 
      
			email5 = makeDynString("+41754115722@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email5, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email6 = makeDynString("+41754117394@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email6, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email7 = makeDynString("+41754110307@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email7, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 

			email8 = makeDynString("+41754117652@mail2sms.cern.ch", "qc8dcs.administrator@cern.ch", "904 QC8 Error: status", textMessage);
			sendMail(smtp_host, email8, ret, smtp_user, smtp_pass, useTLS, sAttachPath) ; 
*/
				delay(1);
				dpSet(flagdp,1);
				DebugTN("status Flag Set " + dp);


  		}
  }
	else{
		if(flag){
			dpSet(flagdp,0);
			//DebugTN("Trip Flag Cleared " + dp);
		}
	}
}




