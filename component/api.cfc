<cfcomponent rest="true" restpath="api">
    <!--- This function gets all of the tasks currently in the system, whether they are completed or not --->
    <cffunction name="getwalks" restpath="getwalks" access="remote" returntype="string" httpmethod="get">
        <cfquery name="getallwalks" datasource="walktracker">
            SELECT *
            FROM tbl_walks
        </cfquery>
        <cfset JSONReturn = serializeJSON(getallwalks,"struct") />
        <cfreturn JSONReturn>
    </cffunction>

    <!--- This function inserts a new task and sets it to not complete --->
    <cffunction name="insertwalk" restpath="insertwalk" access="remote" returntype="boolean" httpmethod="post">
        <cfargument name="walkdatetime" required="yes" type="string" restArgSource="form">
        <cfset success = 1>
        <cftry>
            <cfquery name="insertwalk" datasource="walktracker">
                INSERT INTO tbl_walks(walkdatetime,completed)
                VALUES (<cfqueryparam value="#walkdatetime#" cfsqltype="CF_SQL_VARCHAR">,0)
            </cfquery>
            <cfcatch type="any">
                <cfset success = 0>
            </cfcatch>
        </cftry>
        <cfreturn success>
    </cffunction>
</cfcomponent>