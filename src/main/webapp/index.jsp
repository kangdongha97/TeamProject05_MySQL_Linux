<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
		<table width="30%" border="1" cellpadding="10" cellspacing="1">
			<tr align="center">
				<td colspan="3">�α���</td>
			</tr>
			<form METHOD=POST action="login.jsp">
				<tr align="center">
					<td>���̵�</td>
					<td><input type="text" name="id" value="admin"></td>
					<td>���̵� �����ּ���</td>
				</tr>
				<tr align="center">
					<td>�н�����</td>
					<td><input type="text" name="pass" value="admin"></td>
					<td>��й�ȣ�� �����ּ���</td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input type="submit" value="�α���"></td>
				</tr>
			</form>
			<tr align="center">
				<td><a href="register.jsp">ȸ������</a></td>
				<td><a>���̵�ã��</a></td>
				<td><a>��й�ȣã��</a></td>
			</tr>
			
		</table>
	
</body>
</html>