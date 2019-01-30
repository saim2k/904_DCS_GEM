void cmsrpi_configureDip(dyn_string& exc){
  
  string configDpname=  "DIPConfig_rpi";  
  string dipItemRpi= "dip/CMS/S4CMS/PRESSURE/UXC";
  
  dyn_string tagRpi; //dip publication name - ie tag
  dyn_string dpNameRpi; // name of the datapoint
  //dyn_string dpeFinValRpi; //array contains the name of machine and the datapoint element (finalValue) - ie dpe

  
//----------------- publication tag names ----------------------  

  tagRpi = makeDynString("pressureUXC_hPa", "temperatureUXC_degC");  
  
//----------------- dtapoint names ----------------------  
  
  string rpiSystemName = getSystemName();
  
  dpNameRpi = makeDynString(rpiSystemName+"rpiPressureUXC.pressureValue_hPa", rpiSystemName+"rpiPressureUXC.temperatureValue_degC");
  
  if (! dpExists(configDpname)) dpCreate(configDpname, "_FwDipConfig");
  fwDIP_unpublishAll(configDpname, exc);

  cmsrpi_publishDip(tagRpi, dpNameRpi, dipItemRpi, configDpname, exc);

}
void cmsrpi_publishDip(dyn_string tagarray, dyn_string dpearray, string dipItem, string configDp, dyn_string& exc){

  for(int i=1; i<=dynlen(tagarray); i++){
     fwDIP_publishPrimitive((dipItem+"/"+tagarray[i]),dpearray[i],0,configDp,exc,true);
     //DebugN(dipItem,dpearray[i],tagarray[i],0,configDp, exc,true);
  }

  DebugN("finished the DIP publication script "+dipItem);
//fwDIP_publishStructure(dipItem,dpeFinalVals,tags,0,configDp, exc,true);
//fwDIP_publishPrimitive(dipItem,dpeFinalVal,tag,0,configDp, exc,true);

}
