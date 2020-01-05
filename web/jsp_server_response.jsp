
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Auto Refresh Header</title>
    </head>
    <body>
    <center>
        <h1>Auto Refresh Header</h1>
        <%
        // Set refresh, autoload time as 5 seconds
        response.setIntHeader("Refresh", 5);
        // Get current time
        Calendar calendar = new GregorianCalendar();
        
        String am_pm;
        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        int seconds = calendar.get(Calendar.SECOND);
        
         if(calendar.get(Calendar.AM_PM) == 0){
         am_pm = "AM";
         }else{
         am_pm = "PM";
         String CT = hour+":"+ minute +":"+ seconds +" "+ am_pm;
         out.println("Current Time is: " + CT + "\n");
         }
        
        %>
    </center>
    </body>
</html>
