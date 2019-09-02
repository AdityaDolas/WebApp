<%@page import="com.aditya.pojo.UserA"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<UserA> al=(List<UserA>)session.getAttribute("ulist"); %>


<table cellpadding="10" cellspacing="10" border="2" align="center">

<tr><th>Name</th><th>Contact</th><th>Email</th><th>Password</th><th colspan="2">Action</th></tr>
<%for(UserA u:al){ %>
<tr>
<td><%=u.getName() %></td>
<td><%=u.getContact() %></td>
<td><%=u.getEmailid() %></td>
<td><%=u.getPass() %></td>
<td><a href="UserServletR?action=delete&email=<%=u.getEmailid()%>">Delete</a></td>
<td><a href="#">Edit</a></td>
</tr>

<%} %>
</table>

</body>
</html>