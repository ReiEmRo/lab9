<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reset Password</h1>
        <p>Please enter a new password.</p>
        
        <form action="reset" method="post">
            <div>
                <input type="text" name="password" id="password">
                <input type="text" name="uuid" value="${uuid}" hidden>
            </div><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
