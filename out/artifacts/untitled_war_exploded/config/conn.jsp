<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"  %>

<%!

    Connection conn = null ;
    ResultSet  rs   = null ;
    Statement stmt   ;
    String url= null ;

%>

<%

    try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yhgaj", "root", "zlw255151");
        stmt = conn.createStatement();

%>
