<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JavaRush</title>
</head>
<body>
<h1>Список пользователей</h1>



 Поиск записи по имени:
<c:url var="searchUrl" value="/test/main/users/search" />
<form:form modelAttribute="user" method="POST" action="${searchUrl}">
  <table>
    <tr>
      <td><form:label path="name">Введите имя:</form:label></td>
      <td><form:input path="name"/></td>
      <td><input type="submit" value="Поиск"/></td>
    </tr>
  </table>
  <br>
</form:form>
Выводить по:
<c:url var="pageUrl" value="/test/main/users?resultsPerPage=5"/>
<a href="${pageUrl}">5</a>
<c:url var="pageUrl" value="/test/main/users?resultsPerPage=10"/>
<a href="${pageUrl}">10</a>
<c:url var="pageUrl" value="/test/main/users?resultsPerPage=20"/>
<a href="${pageUrl}">20</a>
<table style="border: 1px solid; width: 600px; text-align:center">
  <thead style="background:#fcf">
  <tr>
    <th>ID</th>
      <th>Name</th>
    <th>Age</th>
    <th>isAdmin</th>
    <th>createdDate</th>
    <th colspan="2">Actions</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${users}" var="users">
    <c:url var="editUrl" value="/test/main/users/edit?id=${users.id}" />
    <c:url var="deleteUrl" value="/test/main/users/delete?id=${users.id}" />
    <tr>
      <td><c:out value="${users.id}" /></td>
      <td width="25%"><c:out value="${users.name}" /></td>
      <td><c:out value="${users.age}" /></td>
        <td><c:out value="${users.getisAdmin()}" /></td>
        <td width="30%"><c:out value="${users.createDate}" /></td>
      <td><a href="${editUrl}">Изменить</a></td>
      <td><a href="${deleteUrl}">Удалить</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<th>Перейти на страницу:</th>
<c:forEach begin="${startpage}" end="${endpage}" var="p">
  <c:url var="pageUrl" value="/test/main/users?page=${p}" />
  <c:if test="${p == currentPage}">
    <a href="${pageUrl}" style="color: #0005d1;">${p}</a>
  </c:if>
  <c:if test="${ p != currentPage}">
    <a href="${pageUrl}">${p}</a>
  </c:if>
</c:forEach>
<c:url var="pageUrl" value="/test/main/users?page=${page + 1}" />
  <a href="${pageUrl}">Следующая</a>

<br>
<br>
<c:url var="addUrl" value="/test/main/users/add" />

<c:if test="${not empty users}">
  <a href="${addUrl}">Добавить новую запись</a>
</c:if>


<c:if test="${empty users}">
  В данный момент нет ни одного пользователя в таблице. <a href="${addUrl}">Добавить</a> пользователя.
</c:if>

</body>
</html>