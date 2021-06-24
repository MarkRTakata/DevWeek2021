<cfscript>
if(url.id){
    switch(url.id){
        case "1":
            writeOutput("<img src='https://hollywoodlife.com/wp-content/uploads/2021/01/Betty-White-99th-birthday-mega-ftr.jpg?w=620' width='300' />");
        break;
        case "2":
            writeOutput("<img src='https://hips.hearstapps.com/countryliving.cdnds.net/17/47/1511194376-cavachon-puppy-christmas.jpg' width='300' />");
        break;
        case "3":
            writeOutput("<img src='https://i.pinimg.com/originals/7c/db/20/7cdb20edd3c72a774fa6f9b3037c0d85.jpg' width='300' />");
        break;
        default:
        writeOutput("Not supported");
        break;
    }
}
</cfscript>