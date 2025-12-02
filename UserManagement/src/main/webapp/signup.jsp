<%@ page language="java" %>
<html>
<head>
    <title>Signup</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
    <div style="background-color: white; padding: 30px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); width: 300px;">
        <h2 style="text-align: center; color: #333;">Signup</h2>
        <form method="post" action="signup" style="display: flex; flex-direction: column;">
            <label style="margin-bottom: 5px; color: #555;">Username:</label>
            <input name="username" style="padding: 8px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;" />

            <label style="margin-bottom: 5px; color: #555;">Password:</label>
            <input type="password" name="password" style="padding: 8px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px;" />

            <input type="submit" value="Signup" style="padding: 10px; background-color: #28a745; color: white; border: none; border-radius: 5px; cursor: pointer;" />
        </form>
    </div>
</body>
</html>
