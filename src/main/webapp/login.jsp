<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="LoginServlet" method="POST">

            <table>
                <tr>
                    <td><input type="text" name ="usuario" placeholder="Usuário"></td>
                </tr>

                <tr>
                    <td><input type ="password" name="senha" placeholder="Password"></td>
                </tr>

                <tr>
                    <td> <input type="submit" value="Login"> </td>
                </tr>

            </table>

        </form>

    </body>
</html>
