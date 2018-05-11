<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 

request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String filename = id+".txt";
String result ="";

PrintWriter writer = null;
BufferedReader reader = null;

try{
	String filePath = application.getRealPath("/WEB-INF/user/"+id+".txt");
	out.println(filePath);
	String text ="";
	
	reader = new BufferedReader(new FileReader(filePath));
	for(int i=0;i<3;i++)
	{
		text = reader.readLine();
		if(i==1)
		{
			out.println(pw);
			out.println(text);
			text = text.replaceAll(" ", "");
			if(text.equals(pw))
			result ="ok";
			else
			result ="fail";
			out.println(result);
		}
		
	}
	
}catch(Exception e){
	result ="no";
	out.println("파일을 읽을 수 없습니다.");
}

response.sendRedirect("loginResult.jsp?result="+result);


%>