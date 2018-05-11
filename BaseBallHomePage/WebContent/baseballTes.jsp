<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main페이지</title>
<style type="text/css">

</style>
</head>
<body>

<table border="1" width="100%" height="100%" cellpadding="2" cellspacing="0">
<tr >
	<td colspan="2" width ="500px">
		<jsp:include page="top.jsp" flush="false"/>
	</td>
</tr>

<tr>
	<td width ="150" valign="top">
		<jsp:include page="left.jsp" flush="false"></jsp:include>
	</td>
	<td width ="350" valign="top">
		<jsp:include page="<%=contentPage %>" flush="false"></jsp:include>
	</td>
</tr>

<tr>
	<td colspan="2">
	<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>

</table>




</body>
</html>