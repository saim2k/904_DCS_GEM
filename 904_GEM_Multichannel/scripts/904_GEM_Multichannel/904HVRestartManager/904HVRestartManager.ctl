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
 
} //end of main

LockChannel(string dp, bit32 value){


  dyn_string split;   //remove . from dp name
	  split = strsplit(dp, ".");

  string lockdpe;   //define lockdpe
	  lockdpe = split[1]+".settings.onOff:_lock._original._locked";

  dyn_string splitName; //split again name of dp to isolate channel number
	    splitName = strsplit(dp, "l");

  int channelN; //channel number
	  channelN = splitName[2];


  string Board; //isolate board dp from channel dp
	  Board=substr(splitName[1],0,sizeof(splitName[1])-7);

  string BoardNum; //isolate board number
	  BoardNum=substr(splitName[1],sizeof(splitName[1])-9,2);

  string Chamber;

  bool opMode; //get the opMode of the board
	  dpGet(Board+".settings.opMode", opMode);

  bool flag; //flag to see it the board was already in GEM mode or not
	  flag = 0;

  int restarts; //number of automatic restarts already performed by the particular chamber
	  restarts = 0;

  int restartLimit; //get number of restart limits given by the user
	  dpGet("cms_gem_dcs_1:restartLimit.value",restartLimit);

  string restartCounterdp; //dp in which the number of automatic restarts already performed by the chamber is stored

  //identify Top and Bottom chamber
  if(channelN<7){
	  Chamber=BoardNum+"Top";
  }
  else{
	  Chamber=BoardNum+"Bottom";
  }
  //get the number of automatic restarts already performed by the chamber
  restartCounterdp="cms_gem_dcs_1:Board"+Chamber+".value";
    DebugTN("Restart counter = ", restartCounterdp);
    dpGet(restartCounterdp, restarts);


  //is the chamber already restarting?
  bool isRestarting;
	  isRestarting = 0;
    
    
  // single channel restart status  
  int isDrift, isG1Top, isG1Bot, isG2Top, isG2Bot, isG3Top, isG3Bot;
    isDrift = 0;
    isG1Top = 0;
    isG1Bot = 0;
    isG2Top = 0;
    isG2Bot = 0;
    isG3Top = 0;
    isG3Bot = 0;  

  string DriftStatus, G1TopStatus, G1BotStatus, G2TopStatus, G2BotStatus, G3TopStatus, G3BotStatus; 
    DriftStatus = "cms_gem_dcs_1:Board"+Chamber+".Drift";   
    G1TopStatus = "cms_gem_dcs_1:Board"+Chamber+".G1Top";
    G1BotStatus = "cms_gem_dcs_1:Board"+Chamber+".G1Bot";
    G2TopStatus = "cms_gem_dcs_1:Board"+Chamber+".G2Top";
    G2BotStatus = "cms_gem_dcs_1:Board"+Chamber+".G2Bot";
    G3TopStatus = "cms_gem_dcs_1:Board"+Chamber+".G3Top";
    G3BotStatus = "cms_gem_dcs_1:Board"+Chamber+".G3Bot";
    
    dpGet(DriftStatus, isDrift);
    dpGet(G1TopStatus, isG1Top);
    dpGet(G1BotStatus, isG1Bot);
    dpGet(G2TopStatus, isG2Top);
    dpGet(G2BotStatus, isG2Bot);
    dpGet(G3TopStatus, isG3Top);
    dpGet(G3BotStatus, isG3Bot);
    
    
      dyn_int channelsSummaryPre;
      channelsSummaryPre = makeDynInt(isDrift, isG1Top, isG1Bot, isG2Top, isG2Bot, isG3Top, isG3Bot);
      DebugTN("Status of all the channels pre-restart= ", channelsSummaryPre);

    
  string restartStatus; //dp which tells if the chamber is already restarting
    restartStatus = "cms_gem_dcs_1:Board"+Chamber+".currentlyRestarting";

    dpGet(restartStatus, isRestarting);

    DebugTN("Chamber is restarting? ", isRestarting);	
    


  dyn_string TopChamberCh;
  dyn_string BottomChamberCh;

	TopChamberCh = makeDynString(splitName[1]+"l000",
				   splitName[1]+"l001",
				   splitName[1]+"l002",
				   splitName[1]+"l003",
				   splitName[1]+"l004",
				   splitName[1]+"l005",
				   splitName[1]+"l006");

	BottomChamberCh = makeDynString(splitName[1]+"l007",
		     		  splitName[1]+"l008",
				      splitName[1]+"l009",
				      splitName[1]+"l010",
				      splitName[1]+"l011",
				      splitName[1]+"l012",
				      splitName[1]+"l013");


//Locks the dp in case of trip

	if(getBit(value,6)||getBit(value,9)){
		
		dpSetWait(lockdpe, 1);
			DebugTN("There was a trip " + dp + " locked for 180 sec");
		delay(80);
		dpSetWait(lockdpe, 0);
			DebugTN(dp + " unlocked");
	
  //Check if the restart sequence is enabled
  bool sequenceEnabled;
	dpGet("cms_gem_dcs_1:RestartSequence.value", sequenceEnabled);
    DebugTN("Is sequence enabled? ", sequenceEnabled);


	  if(sequenceEnabled && restarts<(restartLimit+1)){

	  	dpSetWait(restartStatus,1); //chamber is restarting
	  	DebugTN("Restarting procedure started for chamber");
	
	    //If sequenceEnabled and the limits of restarts has not been reached, once the dps are unlocked, restart sequence is initiated

	  	//Step 0 - Clear Alarm

  		dpSetWait("CAEN/904_HV_mainframe.Commands.ClearAlarm", 1);
  		dpSetWait("CAEN/904_Shared_mainframe.Commands.ClearAlarm", 1);


	  	//Step 1 - Set the current limit at 20 uA
	  	if(channelN<7){
	  		for(int i=1; i<8; i++){
	  			dpSetWait(TopChamberCh[i]+".settings.i0", 20);	
	  		}
	  	}
	  	else{
	  		for(int i=1; i<8; i++){
	  			dpSetWait(BottomChamberCh[i]+".settings.i0", 20);	
	  		}
	  	}

	  	delay(10);

	  	//Step 2 - Move the group of channels in GEM mode (if not already)
	  	if(opMode){
	  		DebugTN("Chamber already in GEM mode");
	  	}
	  	else{
	  		dpSetWait(Board+".settings.opMode",1);
	  		flag = 1;
	  		DebugTN("Chamber moved in GEM mode");
	  	}

	  	//Step 3 - Turn on group of channels, profiting of GEM mode, and then move back current limit to 2 uA
	  	if(channelN<7){
	  		dpSetWait(TopChamberCh[1]+".settings.onOff",1);
	  		DebugTN("Restarting the chamber");

	  		delay(600);

	  		for(int i=1; i<8; i++){
	  			dpSetWait(TopChamberCh[i]+".settings.i0", 2);	
	  		}
	  	}
	  	else{
	  		dpSetWait(BottomChamberCh[1]+".settings.onOff",1);
	  		DebugTN("Restarting the chamber");

	  		delay(600);
	  		for(int i=1; i<8; i++){
	  			dpSetWait(BottomChamberCh[i]+".settings.i0", 2);	
	  		}
	  	}

	  	//Step 4 - Restore original opMode of group of channels (if needed)
	  	if(flag){
	  		dpSetWait(Board+".settings.opMode",0);
	  		flag = 0;
	  		DebugTN("Chamber moved back in FREE mode");
	  	}

      if(channelN==0){
        isG3Bot = isG3Bot+1;
        dpSetWait(G3BotStatus, isG3Bot);
      }      
      else if(channelN==1){
        isG3Top = isG3Top+1;
        dpSetWait(G3TopStatus, isG3Top);
      }      
      else if(channelN==2){
        isG2Bot = isG2Bot+1;
        dpSetWait(G2BotStatus, isG2Bot);
      }      
      else if(channelN==3){
        isG2Top = isG2Top+1;
        dpSetWait(G2TopStatus, isG2Top);
      }      
      else if(channelN==4){
        isG1Bot = isG1Bot+1;
        dpSetWait(G1BotStatus, isG1Bot);
      }      
      else if(channelN==5){
        isG1Top = isG1Top+1;
        dpSetWait(G1TopStatus, isG1Top);
      }      
      else if(channelN==6){
        isDrift = isDrift+1;
        dpSetWait(DriftStatus, isDrift);
      }      
      else if(channelN==7){
        isG3Bot = isG3Bot+1;
        dpSetWait(G3BotStatus, isG3Bot);
      }      
      else if(channelN==8){
        isG3Top = isG3Top+1;
        dpSetWait(G3TopStatus, isG3Top);
      }      
      else if(channelN==9){
        isG2Bot = isG2Bot+1;
        dpSetWait(G2BotStatus, isG2Bot);
      }      
      else if(channelN==10){
        isG2Top = isG2Top+1;
        dpSetWait(G2TopStatus, isG2Top);
      }      
      else if(channelN==11){
        isG1Bot = isG1Bot+1;
        dpSetWait(G1BotStatus, isG1Bot);
      }      
      else if(channelN==12){
        isG1Top = isG1Top+1;
        dpSetWait(G1TopStatus, isG1Top);
      }      
      else if(channelN==13){
        isDrift = isDrift+1;
        dpSetWait(DriftStatus, isDrift);
      }
      
      dyn_int channelsSummary;
      channelsSummary = makeDynInt(isDrift, isG1Top, isG1Bot, isG2Top, isG2Bot, isG3Top, isG3Bot);
      DebugTN("Status of all the channels = ", channelsSummary);

      restarts = dynMax(channelsSummary);
      DebugTN("Status of the chamber = ", restarts);
      //restarts = restarts + 1 ;
	  	dpSetWait(restartCounterdp, restarts);

	  	dpSetWait(restartStatus,0); //end of restart process for this chamber
	  	DebugTN("Restarting procedure is completed for this chamber");
		
	  }
	else if(!sequenceEnabled){
	  	DebugTN("There was a trip, but the restarting sequence was disabled!");
		}
//	else if(isRestarting){
//			DebugTN("There was a trip, but the chamber was already restarting!");
//		}
	else{
			DebugTN("There was a trip, but the maximum number of restarts has been reached!");
		}


	} // Instead if it wasn't a trip...
else{
	DebugTN("Not a trip");
}	
	


}
