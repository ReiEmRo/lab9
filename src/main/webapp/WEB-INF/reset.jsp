<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reset Password</h1>
        <p>Please enter your email address to reset your password.</p>
        
        <form action="reset" method="post">
            <div>
                <label for="email">Email: </label>
                <input type="text" name="email" id="email">
            </div><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
