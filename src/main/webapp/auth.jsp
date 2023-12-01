<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Auth</title>
    <style>
        * {
            font-family: sans-serif;
            font-size: 14px;
        }

        body {
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-color: #e6e6e6;
        }

        .form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            padding: 1rem;
            border: 1px gray solid;
            border-radius: 6px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-item {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }

        .form-item__input {
            padding: 0.5rem;
            outline: none;
            background-color: #f2f2f2;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .form-item__input:focus {
            background-color: #e9e9e9;
        }

        .form__button {
            padding: 0.5rem;
            background-color: #5cb85c;
            border: 1px solid #4cae4c;
            color: #fff;
            border-radius: 6px;
            cursor: pointer;
        }

        .form__button:hover {
            background-color: #4cae4c;
        }

        .add-user-button {
            margin-top: 0.5rem;
            padding: 0.5rem;
            background-color: #337ab7;
            border: 1px solid #2e6da4;
            color: #fff;
            border-radius: 6px;
            text-decoration: none;
            display: inline-block;
            cursor: pointer;
        }

        .add-user-button:hover {
            background-color: #286090;
        }

        .view-users-button {
            margin-top: 0.5rem;
            padding: 0.5rem;
            background-color: #337ab7;
            border: 1px solid #2e6da4;
            color: #fff;
            border-radius: 6px;
            text-decoration: none;
            display: inline-block;
            cursor: pointer;
            text-decoration: none;
        }

        .view-users-button:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
<form class="form" method="post">
    <div class="form-item">
        <label for="username">Имя пользователя</label>
        <input class="form-item__input" type="text" name="username" id="username">
    </div>
    <div class="form-item">
        <label for="password">Пароль</label>
        <input class="form-item__input" type="password" name="password" id="password">
    </div>
    <button class="form__button" type="submit">Войти</button>
    <a class="add-user-button" href="addUser">Добавить пользователя</a>
    <a class="view-users-button" href="viewUsers">Просмотреть пользователей</a>
</form>
</body>
</html>
