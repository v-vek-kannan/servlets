<%@ page language="java" %>
<html>
<head><title>Signup</title></head>
<body>
    <form method="post" action="signup">
        Username: <input type="text" name="username" /><br/>
        Password: <input type="password" name="password" /><br/>
        Role: 
        <select name="role">
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select><br/>
        <input type="submit" value="Signup" />
    </form>
</body>
</html>
