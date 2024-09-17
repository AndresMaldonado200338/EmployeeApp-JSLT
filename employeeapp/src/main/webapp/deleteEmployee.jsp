<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Delete</title>
            <link href="./css/empStyle.css" rel="stylesheet" type="text/css">
        </head>

        <body>
            <div class="topnav">
                <a href="./">Crear empleado</a>
                <a href="modifyEmployee.jsp">Modificar empleado</a>
                <a href="deleteEmployee.jsp">Borrar Empleado</a>
            </div>

            <div class="content">
                <h1>DELETE EMPLOYEE</h1>
                <h2>Hola, por favor ingrese el ID del empleado que desea borrar</h2>

                <form action="DeleteEmployee" method="get">
                    <label for="employeeId">Ingrese el ID:</label>
                    <input type="text" id="employeeId" name="employeeId" required>
                    <button type="submit">Borrar empleado</button>
                </form>

                <c:choose>
                    <c:when test="${oper == 'delete_success'}">
                        <h2>Empleado eliminado exitosamente!</h2>
                    </c:when>
                    <c:when test="${oper == 'employee_not_found'}">
                        <h2>Empleado no encontrado. Intente de nuevo.</h2>
                    </c:when>
                </c:choose>
            </div>

            <div class="footer">
                <p>Footer</p>
            </div>

        </body>

        </html>