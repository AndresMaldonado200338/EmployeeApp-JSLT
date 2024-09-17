<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title> Formulario Empleado</title>
            <link rel="stylesheet" href="./css/empStyle.css" type="text/css">
        </head>

        <body>
            <div class="topnav">
                <a href="./">Crear empleado</a>
                <a href="./modifyEmployee.jsp">Modificar empleado</a>
                <a href="./deleteEmployee.jsp">Borrar Empleado</a>
            </div>

            <div class="content">
                <h1> EMPLOYEE APP</h1>
                <h2> Hola, por favor ingrese los datos del usuario</h2>
                <form action="AddEmployee" method="post">
                    <table cellspacing="3" cellpadding="3" border="1">
                        <tr>
                            <td align="right"> ID Empleado: </td>
                            <td><input type="text" name="emp_id"></td>
                        </tr>
                        <tr>
                            <td align="right"> Nombre Empleado: </td>
                            <td><input type="text" name="emp_name"></td>
                        </tr>
                        <tr>
                            <td align="right"> Email empleado: </td>
                            <td><input type="text" name="emp_email"></td>
                        </tr>
                        <tr>
                            <td align="right"> Telefono empleado: </td>
                            <td><input type="text" name="emp_phone"></td>
                        </tr>
                    </table>
                    <input type="submit" value="Enviar">
                </form>
                <c:set var="oper" value="${sessionScope.oper}" />;
                <c:if test="${oper eq 'success'}">
                    <h2>Empleado adicionado exitosamente!</h2>
                </c:if>
            </div>

            <div class="footer">
                <p>Footer</p>
            </div>

        </body>

        </html>