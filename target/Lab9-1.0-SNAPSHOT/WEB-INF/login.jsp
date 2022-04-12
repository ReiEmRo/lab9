<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>My Notes</title>
    </head>
    <body>
        <h1>Notes App</h1>
        <h2>Login</h2>
        <form action="login" method="post">
            <div>
                <label for="email">Email: </label>
                <input type="text" name="email" id="email">
            </div>
            <div>
                <label for="password">Password: </label>
                <input type="password" name="password" id="password">
            </div><br>

            <a href="reset">Forgot Password</a><br>
            <input type="submit" value="Sign in">
        </form>
    </body>
</html>
