<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="Pack.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
	<body>
		<jsp:useBean id="recv" class="Pack.DTO" scope="page"/>
		<jsp:setProperty name="recv" property="*"/>
		<% //recv.getId() %>
		<% //recv.getPass() %>
		<%
 	    // �ѱ� ó�� 
	    //request.setCharacterEncoding("UTF-8");
		//String idq = request.getParameter("id");
		//String passq = request.getParameter("pass");
		//getParameter ��� Ŀ�ǵ� ��ü ���
		
		
		String idq = recv.getId();
		String passq = recv.getPass();
		
		
	 	final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/db01";
		final String DBID = "root";
		final String DBPW = "1234";
	     
	     // 1 ����̹� �ε�
	     Class.forName(DRIVER);
	     System.out.println(" ����̹� �ε� ����! ");
	     // 2 ��񿬰�
	     Connection con =
	     DriverManager.getConnection(DBURL, DBID, DBPW);
	     System.out.println(" ��� ���� ����! ");
	     // 3 sql �ۼ� & pstmt ��ü����
	     
	    

	     String name2 = "select * from regitable where id = '" + idq + "' AND pass = '" + passq +"';";
	     //out.println(name1);
	     //out.println(name2);
	     try {
		    	PreparedStatement pstmt = con.prepareStatement(name2);
				ResultSet rs = pstmt.executeQuery();
				
				if(rs.next() != false){
		%>
					<h1>�α��εǾ����ϴ�.</h1>
					<table border="1">
		<%
					out.print("ȸ������");
					
					
					String id = rs.getString(1);
					String pass = rs.getString(2);
					String name = rs.getString(3);
					String tel = rs.getString(4);
					String email = rs.getString(5);
					String gender = rs.getString(6);
		%>
						<tr>
						<td><%= id%></td>
						<td><%= pass%></td>
						<td><%= name%></td>
						<td><%= tel%></td>
						<td><%= email%></td>
						<td><%= gender%></td>
						</tr>
		
					</table><hr/>
					
		<%
				}
				else{
					out.print("ȸ�������� �����ϴ�.");
				}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	  	%>
	
	</body>
</html>