<%--
  Created by IntelliJ IDEA.
  User: 79372
  Date: 25.10.2023
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Characters</title>
</head>
<body>
<h1>Characters</h1>
<a href="${pageContext.request.contextPath}/characters/create">New character</a>
<table>
    <thead>
    <tr>
        <td>#</td>
        <td>Name</td>
        <td>HP</td>
        <td>Attack</td>
        <td>Defence</td>
        <td>Level</td>
        <td>Experience</td>
        <td>Weapon</td>
        <td>Artefacts</td>
        <td>Update</td>
        <td>Delete</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${characters}" var="ch" varStatus="idx">
        <tr>
            <td>${idx.getIndex()+1}</td>
            <td>${ch.name}</td>
            <td>${ch.hp}</td>
            <td>${ch.attack}</td>
            <td>${ch.defence}</td>
            <td>${ch.level}</td>
            <td>${ch.experience}</td>
            <td>${ch.weapon.name}</td>
            <td>
                <c:forEach items="${ch.artefacts}" var="art">
                    <p>${art.name}</p>
                </c:forEach>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/characters/update" method="get">
                    <label>
                        <input name="id" value="${ch.id}" hidden>
                    </label>
                    <div>
                        <button type="submit">Update</button>
                    </div>
                </form>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/characters/delete" method="post">
                    <label>
                        <input name="id" value="${ch.id}" hidden>
                    </label>
                    <div>
                        <button type="submit">Delete</button>
                    </div>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
