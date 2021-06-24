<cfscript>
component {
    this.name = "walktracker";
    this.datasource = "walktracker";
    this.sessionManagement = true;
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