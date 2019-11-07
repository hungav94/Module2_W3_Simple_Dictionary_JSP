<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: An Viet Hung
  Date: 11/7/2019
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin Chao");
    dic.put("how", "The nao");
    dic.put("book", "Quyen vo");
    dic.put("Computer", "May tinh");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null){
        out.println("Word: " + search + "<br>");
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
