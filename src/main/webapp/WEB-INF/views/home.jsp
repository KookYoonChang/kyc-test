<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.InetAddress"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<body>
	<h1>Session Clustering Test</h1>
	<% 
    Integer ival = (Integer)session.getAttribute("_session_counter"); 

    if(ival==null) { 
        ival = new Integer(1); 
    } 
    else { 
        ival = new Integer(ival.intValue() + 1); 
    } 
    session.setAttribute("_session_counter", ival); 
    System.out.println("here~~~~"); 
%>
	Session Counter = [
	<b> <%= ival %>
	</b>]
	<p>
	<p>
		Current Session ID :
		<%= request.getRequestedSessionId() %><br />
	<hr>
	<% 
 
String id_str=session.getId(); 
 
long lasttime=session.getLastAccessedTime(); 
 
long createdtime=session.getCreationTime(); 
  
long time_used=(lasttime-createdtime)/60000; 
 
int inactive=session.getMaxInactiveInterval()/60; 
 
boolean b_new=session.isNew(); 
%>
	<h3>Tomcat-1</h3>
	<h3>
		[1] 세션 ID는 [<%=session.getId()%>] 입니다.<br>
		<hr>
	</h3>
	<h3>
		[2] 당신의 웹사이트에 머문 시간은
		<%=time_used%>
		입니다.<br>
		<hr>
	</h3>
	<td>
		<%
								InetAddress inet = InetAddress.getLocalHost();
							%> WAS IP : <%=inet.getHostAddress()%> <%
								String inet02 = request.getRemoteAddr();
							%> WEB IP : <%=inet02%>
	</td>




</body>
</html>