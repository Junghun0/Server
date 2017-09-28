<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javamysql.ConnectDB"%>


<html>
<head></head>
<body>
	<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String type = request.getParameter("type");
                                           
//싱글톤 방식으로 자바 클래스를 불러옵니다.
	ConnectDB connectDB = ConnectDB.getInstance();

try{
	out.println("id = " + id);
	out.println("pwd = " + pwd);
	out.println("type = " + type);

	if(type.equals("login")) {
		String returns = connectDB.logindb(id, pwd);
		out.print(returns);
		}

	else if(type.equals("join")) {
		String returns = connectDB.joindb(id, pwd);
		out.print(returns);
	}

}
catch(NullPointerException e){
	
}

%>
</body>
</html>

