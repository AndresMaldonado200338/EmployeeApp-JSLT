<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="edu.uptc.swi.model.Employee" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modificar empleado</title>
    <link href="./css/empStyle.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="topnav">
        <a href="./">Crear empleado</a>
        <a href="modifyEmployee.jsp">Modificar empleado</a>
        <a href="deleteEmployee.jsp">Borrar Empleado</a>
    </div>

    <div class="content">
        <h1> EMPLOYEE APP</h1>
        <h2> Modificar empleado </h2>

        <c:choose>
            <c:when test="${empty employee}">
                <form action="ModifyEmployee" method="get">
                    <table cellspacing="3" cellpadding="3" border="1">
                        <tr>
                            <td align="right">Ingrese el ID del empleado:</td>
                            <td><input type="text" name="id"></td>
                        </tr>
                    </table>
                    <input type="submit" value="Buscar empleado">
                </form>
            </c:when>
            <c:otherwise>
                <form action="ModifyEmployee" method="post">
                    <input type="hidden" name="id" value="${employee.id}">
                    <table cellspacing="3" cellpadding="3" border="1">
                        <tr>
                            <td align="right">ID Empleado: </td>
                            <td>${employee.id}</td>
                        </tr>
                        <tr>
                            <td align="right">Nombre Empleado: </td>
                            <td><input type="text" name="name" value="${employee.name}"></td>
                        </tr>
                        <tr>
                            <td align="right">Email Empleado: </td>
                            <td><input type="text" name="email" value="${employee.email}"></td>
                        </tr>
                        <tr>
                            <td align="right">Telefono Empleado: </td>
                            <td><input type="text" name="phone" value="${employee.phone}"></td>
                        </tr>
                    </table>
                    <input type="submit" value="Actualizar">
                </form>
            </c:otherwise>
        </c:choose>

        <c:choose>
            <c:when test="${sessionScope.oper == 'success'}">
                <h2>Empleado modificado exitosamente!</h2>
            </c:when>
            <c:when test="${sessionScope.oper == 'error'}">
                <h2>Error al modificar el empleado.</h2>
            </c:when>
        </c:choose>

        <c:if test="${not empty sessionScope.oper}">
            <c:set var="dummy" value="${sessionScope.oper = null}" scope="session" />
        </c:if>
    </div>

    <div class="footer">
        <p>Footer</p>
    </div>
</body>

</html>

