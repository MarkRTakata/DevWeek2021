<cfscript>
component {
    this.name = "WalkTracker";
    this.datasource = "walktracker";
    this.sessionManagement = true;
    function onApplicationStart(){ // init your rest and map service
        restInitApplication( directory=expandPath('/component/'),serviceMapping='walktracker');
    }
    function onRequestStart(){ 
        if(isDefined("URL.reload")){ // Test here for URL variable to restart application to allow re-registering the CFC
            if(URL.reload == "reload"){
                lock timeout="3" type="exclusive" scope="application" {
                    applicationStop();
                    writeDump("Application has been restarted.");
                }
            }
        }
    }
}
</cfscript>