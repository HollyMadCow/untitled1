<%@ page import="java.sql.*"  %>
<%
    //JSP页面直接访问数据库
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String test1;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yhgaj", "root", "zlw255151");
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select username from USER ");
        while(rs.next()){
            String factor = rs.getString("username");
            test1=rs.getString("username");

%>
factor :<%=factor %>
factoy1:<%=test1%>
<%
        }
    }catch(Exception e){
        e.printStackTrace();
    }finally{
        try{
            if(rs != null) rs.close();
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        }catch(Exception e1){
            e1.printStackTrace();
        }
    }
%>

