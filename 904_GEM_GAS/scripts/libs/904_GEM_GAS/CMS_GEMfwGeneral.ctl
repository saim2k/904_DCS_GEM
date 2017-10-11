/***************************************************************
  
  GEM General Library v:1.0
  
  author: Ilaria Vai
  
****************************************************************/  
#uses "fwInstallationUtils.ctl"
#uses "CMSfwAlertSystem/CMSfwAlertSystemUtil.ctl"
#uses "fwRDBArchiving/fwRDBConfig.ctl"


void CMS_GEMfwGeneralInstallation_createSMSnotification(string confName)
{

  CMSfwAlertSystemUtil_loadFromConfigurationDb(confName);
  
  loadUsers();   refreshNotifications();
    CMSfwAlertSystemUtil_showMsg("Loaded");



}




