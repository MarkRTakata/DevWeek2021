<cfcomponent rest="true" restpath="api">
    <!--- This function gets all of the tasks currently in the system, whether they are completed or not --->
    <cffunction name="getwalks" restpath="getwalks" access="remote" returntype="string" httpmethod="get">
        <cfquery name="insertwalk" datasource="taskmanager">
                INSERT INTO tbl_walks(fk_animalid,walkdatetime)
                VALUES (1,#NOW()#)
            </cfquery>
        <cfquery name="getallwalks" datasource="taskmanager">
            SELECT tbl_animals.id, tbl_animals.name, tbl_walks.id, tbl_walks.walkdatetime, tbl_walks.id
            FROM tbl_walks
            left outer join tbl_animals on tbl_walks.fk_animalid = tbl_animals.id
        </cfquery>
        <cfsavecontent variable="displaytable">
        <table id="myTable">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Animal</th>
                    <th>Walk Datestamp</th>
                </tr>
            </thead>
            <tbody>
                <cfoutput query="getallwalks">
                <tr>
                    <td>#ID#</td>
                    <td>#name#</td>
                    <td>#datetimeformat(WALKDATETIME,"mm-dd-yyyy hh:nn tt")#</td>
                </tr>
                </cfoutput>
            </tbody>
        </table>
        <script>$(document).ready( function () {
                    $('#myTable').DataTable();
                } );</script>
        </cfsavecontent>
        <cfreturn displaytable>
    </cffunction>
</cfcomponent>