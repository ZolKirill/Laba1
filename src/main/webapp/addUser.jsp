<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add User</title>
  <style>
    * {
      font-family: Arial, sans-serif;
      font-size: 14px;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #f2f2f2;
    }

    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 6px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    label {
      display: block;
      margin-bottom: 6px;
      color: #333;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    button[type="submit"],
    .view-users-button {
      background-color: #5cb85c;
      color: #fff;
      border: none;
      border-radius: 4px;
      padding: 10px 20px;
      cursor: pointer;
      margin-right: 10px;
    }

    button[type="submit"]:hover,
    .view-users-button:hover {
      background-color: #4cae4c;
    }
  </style>
</head>
<body>
<form action="addUser" method="post">
  <h1>Добавить пользователя</h1>
  <label for="username">Имя пользователя:</label>
  <input type="text" id="username" name="username" required>
  <br><br>
  <label for="password">Пароль:</label>
  <input type="password" id="password" name="password" required>
  <br><br>
  <button type="submit">Добавить</button>
  <a class="view-users-button" href="viewUsers">Просмотреть пользователей</a>
</form>
</body>
</html>