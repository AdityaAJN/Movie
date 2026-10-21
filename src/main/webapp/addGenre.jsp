
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Genre</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 400px;
        margin: 80px auto;
        padding: 25px;
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 0 10px #cccccc;
    }

    h2 {
        text-align: center;
        color: #333333;
    }

    label {
        display: block;
        margin-top: 15px;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    textarea {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
        border: 1px solid #cccccc;
        border-radius: 5px;
    }

    textarea {
        height: 100px;
        resize: vertical;
    }

    input[type="submit"] {
        width: 100%;
        margin-top: 20px;
        padding: 12px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>

<body>

<div class="container">
    <h2>Add Genre</h2>

    <form action="add" method="post">

        <label for="genreName">Genre Name:</label>
        <input type="text" id="genreName" name="genreName"
               placeholder="Enter genre name" required>

        <label for="genreDescription">Genre Description:</label>
        <textarea id="genreDescription" name="genreDescription"
                  placeholder="Enter genre description"
                  required></textarea>

        <input type="submit" value="Add Genre">

    </form>
</div>

</body>
</html>
