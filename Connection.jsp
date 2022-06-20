<%@ page language="java" import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
    Connection con = null;
    PreparedStatement p = null;
    ResultSet rs = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ex","root","system");
    p = con.prepareStatement(sql);
	rs = p.executeQuery();
	Out.println("ename\t\teid\t\tecontact");
	while (rs.next()) {
		int id = rs.getInt("ename");
		String name = rs.getString("eid");
		String email = rs.getString("econtact");
		Out.println(ename + "\t\t" + eid+ "\t\t" + econtact);
    }
    rs.close();
    con.close();
    p.close();
%>