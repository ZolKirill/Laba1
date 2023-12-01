<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Map.Entry" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>View Users</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    h1 {
      text-align: center;
      margin-top: 20px;
    }

    table {
      margin: 0 auto;
      border-collapse: collapse;
      width: 80%;
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
      font-weight: bold;
    }

    tr:hover {
      background-color: #f9f9f9;
    }
  </style>
</head>
<body>
<h1>Список пользователей</h1>
<table>
  <tr>
    <th>Имя пользователя</th>
    <th>Пароль</th>
  </tr>
  <%
    Map<String, String> users = (HashMap<String, String>) request.getAttribute("users");
    if (users != null) {
      Set<Entry<String, String>> entrySet = users.entrySet();
      Iterator<Entry<String, String>> iterator = entrySet.iterator();
      while (iterator.hasNext()) {
        Entry<String, String> entry = iterator.next();
  %>
  <tr>
    <td><%= entry.getKey() %></td>
    <td><%= entry.getValue() %></td>
  </tr>
  <%
    }
  } else {
  %>
  <tr>
    <td colspan="2">No Users</td>
  </tr>
  <%
    }
  %>
</table>
</body>
</html>