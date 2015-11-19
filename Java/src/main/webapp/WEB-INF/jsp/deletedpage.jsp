<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JavaRush</title>
</head>
<body>

<h1>Запись удалена</h1>

<p>Запись с  id = ${id} была успешно удалена</p>

<c:url var="mainUrl" value="/test/main/users?page=1" />
<p>Вернуться на <a href="${mainUrl}">Главную</a></p>

</body>
</html>