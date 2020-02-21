main()
{
	dyn_errClass err;

	dyn_string channels = makeDynString("cms_gem_dcs_1:CAEN/904_HV_mainframe/board00/channel000.",
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

	dpConnect("LockChannel", channels[i]+"actual.status");

}

   err = getLastError();
      if(dynlen(err)>0)
         DebugTN(err);
 

}

LockChannel(string dp, bit32 value){


dyn_string split;
	split = strsplit(dp, ".");

string lockdpe;
	lockdpe = split[1]+".settings.onOff:_lock._original._locked";



	if(getBit(value,6)||getBit(value,9)){
		
		dpSetWait(lockdpe, 1);
			DebugTN("There was a trip " + dp + " locked for 60 sec");
		delay(60);
		dpSetWait(lockdpe, 0);
			DebugTN(dp + " unlocked");
		
	}
	else{
		DebugTN("Not a trip");

	}






}
