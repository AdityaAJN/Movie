

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Genre Details</title>
</head>
<body>
    <h1>Genre Added Successfully!</h1>

    <p>Genre Name: ${genre.genreName}</p>
    <p>Genre Description: ${genre.genreDescription}</p>

    <a href="${pageContext.request.contextPath}/displayGenree">
        Add Another Genre
    </a>
</body>
</html>
