<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%
    //JSP页面直接访问数据库
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String casecount = null;
    String userid = null;

    try{
//                                    Class.forName("com.mysql.jdbc.Driver");
//                                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yhgaj", "root", "zlw255151");
//                                    stmt = conn.createStatement();
//
        Context initCtx = new InitialContext();
        Context ctx = (Context) initCtx.lookup("java:comp/env");
//获取连接池对象
        DataSource ds =(DataSource)ctx.lookup("jdbc/ConnectionPool");
//创建连接
        conn = ds.getConnection();
        stmt = conn.createStatement();
        String sql="select username,userid from USER WHERE userid='331021198209300019'";
        rs = stmt.executeQuery(sql);
        while(rs.next()){
            casecount = rs.getString("username");
            userid = rs.getString("userid");
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

