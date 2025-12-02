<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
        return; // to stop further execution
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f2f5;
            color: #333;
        }
        .container {
            max-width: 1100px;
            margin: 50px auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        h2 {
            color: #4A90E2;
            text-align: center;
        }
        p {
            text-align: center;
            font-size: 18px;
        }
        a.logout-button {
            display: inline-block;
            margin: 20px auto;
            padding: 10px 20px;
            background: #4A90E2;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
            display: block;
            width: 100px;
            text-align: center;
        }
        a.logout-button:hover {
            background: #357ABD;
        }
        .menu {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 30px;
        }
        .food-card {
            background: #fafafa;
            border: 1px solid #ddd;
            border-radius: 10px;
            width: 220px;
            padding: 15px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            transition: transform 0.2s;
        }
        .food-card:hover {
            transform: scale(1.05);
        }
        .food-card img {
            width: 100%;
            height: 140px;
            object-fit: cover;
            border-radius: 8px;
        }
        .food-title {
            font-size: 18px;
            margin: 10px 0 5px;
            color: #333;
        }
        .food-desc {
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
        <p>This is your dashboard with today's food menu.</p>

        <div class="menu">
            <div class="food-card">
                <img src="https://images.unsplash.com/photo/1601924571340-3cddde90f57e?auto=format&fit=crop&w=600&q=80" alt="Margherita Pizza" />
                <div class="food-title">Margherita Pizza</div>
                <div class="food-desc">Classic cheese & tomato with fresh basil.</div>
            </div>
            <div class="food-card">
                <img src="https://images.unsplash.com/photo/1631709319779-dc0c3dba3a6b?auto=format&fit=crop&w=600&q=80" alt="Paneer Butter Masala" />
                <div class="food-title">Paneer Butter Masala</div>
                <div class="food-desc">Rich and creamy curry with paneer cubes.</div>
            </div>
            <div class="food-card">
                <img src="https://images.unsplash.com/photo/1641226378653-b279ce7c1e57?auto=format&fit=crop&w=600&q=80" alt="Chicken Biryani" />
                <div class="food-title">Chicken Biryani</div>
                <div class="food-desc">Spiced rice with marinated chicken and herbs.</div>
            </div>
            <div class="food-card">
                <img src="https://images.unsplash.com/photo/1604909053246-3c3e4937e813?auto=format&fit=crop&w=600&q=80" alt="Veg Noodles" />
                <div class="food-title">Veg Noodles</div>
                <div class="food-desc">Stir-fried noodles with crunchy vegetables.</div>
            </div>
            <div class="food-card">
                <img src="https://images.unsplash.com/photo/1658657909863-b0d79f574fc1?auto=format&fit=crop&w=600&q=80" alt="Gulab Jamun" />
                <div class="food-title">Gulab Jamun</div>
                <div class="food-desc">Delicious Indian sweet soaked in sugar syrup.</div>
            </div>
        </div>

        <a href="index.jsp" class="logout-button">Logout</a>
    </div>
</body>
</html>
