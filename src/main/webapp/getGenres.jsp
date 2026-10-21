

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="java.util.List" %>
<%@ page import="com.movie.entity.Genre" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Genres</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f1f5f9;
        margin: 0;
        color: #1e293b;
    }

    header {
        background: #172554;
        color: white;
        text-align: center;
        padding: 25px;
    }

    .container {
        max-width: 900px;
        margin: 40px auto;
        padding: 25px;
        background: white;
        border-radius: 10px;
        box-shadow: 0 3px 12px #00000012;
    }

    h2 {
        text-align: center;
        color: #1d4ed8;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 25px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
    }

    th {
        background: #2563eb;
        color: white;
    }

    tr:nth-child(even) {
        background: #f8fafc;
    }

    .btn {
        display: inline-block;
        padding: 10px 16px;
        margin-top: 20px;
        margin-right: 8px;
        background: #2563eb;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }

    .empty {
        text-align: center;
        padding: 20px;
    }
</style>
</head>

<body>

<header>
    <h1>Genre Management</h1>
    <p>All Available Genres</p>
</header>

<div class="container">

    <h2>Genre List</h2>

    <table>
        <tr>
            <th>Genre ID</th>
            <th>Genre Name</th>
            <th>Genre Description</th>
        </tr>

        <%
            List<Genre> genres =
                (List<Genre>) request.getAttribute("getGenre");

            if (genres != null && !genres.isEmpty()) {
                for (Genre g : genres) {
        %>

        <tr>
            <td><%= g.getGenreId() %></td>
            <td><%= g.getGenreName() %></td>
            <td><%= g.getGenreDescription() %></td>
        </tr>

        <%
                }
            } else {
        %>

        <tr>
            <td colspan="3" class="empty">
                No genres found.
            </td>
        </tr>

        <%
            }
        %>

    </table>

    <a class="btn"
       href="<%= request.getContextPath() %>/genreManagement">
        Back to Genre Management
    </a>

    <a class="btn"
       href="<%= request.getContextPath() %>/displayGenree">
        Add Genre
    </a>

</div>

</body>
</html>

