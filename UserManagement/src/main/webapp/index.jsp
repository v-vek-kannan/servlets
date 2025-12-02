<!DOCTYPE html>
<html>
<head>
  <title>Login Page</title>
</head>
<body style="display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f0f2f5; margin: 0; font-family: Arial, sans-serif;">

  <div style="background-color: #fff; padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); width: 100%; max-width: 400px;">
    <h2 style="text-align: center; margin-bottom: 30px;">Login</h2>
    
    <form action="login" method="post">
      <label for="username" style="display: block; margin-bottom: 8px;">Username</label>
      <input type="text" id="username" name="username" required
             style="width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px;">

      <label for="password" style="display: block; margin-bottom: 8px;">Password</label>
      <input type="password" id="password" name="password" required
             style="width: 100%; padding: 10px; margin-bottom: 30px; border: 1px solid #ccc; border-radius: 5px;">

      <button type="submit"
              style="width: 100%; padding: 10px; background-color: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer;">
        Login
      </button>
    </form>

    <!-- Signup link -->
    <p style="text-align: center; margin-top: 20px;">
      New here? <a href="signup.jsp" style="color: #007bff; text-decoration: none;">Sign up</a>
    </p>
  </div>

</body>
</html>
