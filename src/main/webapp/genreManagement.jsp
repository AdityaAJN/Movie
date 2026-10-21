
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genre Management</title>
<style>
body{font-family:Arial;background:#f1f5f9;margin:0;color:#1e293b}
header{background:#172554;color:white;text-align:center;padding:25px}
.container{max-width:850px;margin:35px auto;padding:20px}
.actions{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:20px}
.action{background:white;padding:25px;border-radius:10px;text-align:center;box-shadow:0 3px 12px #00000012}
.action h3{color:#1d4ed8}
.btn{display:inline-block;padding:10px 18px;background:#2563eb;color:white;text-decoration:none;border-radius:5px}
.back{display:inline-block;margin-bottom:25px}
</style>
</head>
<body>
<header><h1>📚 Genre Management</h1><p>Manage your movie genres</p></header>
<div class="container">
<a class="back" href="${pageContext.request.contextPath}/">← Back to Home</a>
<div class="actions">
<div class="action"><h3>Create Genre</h3><p>Add a new genre.</p><a class="btn" href="${pageContext.request.contextPath}/displayGenree">Create</a></div>
<div class="action"><h3>Fetch Genres</h3><p>View all genres.</p><a class="btn" href="${pageContext.request.contextPath}/allGenres">Fetch</a></div>
<div class="action"><h3>Update Genre</h3><p>Modify genre details.</p><a class="btn" href="${pageContext.request.contextPath}/updateGenre">Update</a></div>
<div class="action"><h3>Delete Genre</h3><p>Remove a genre record.</p><a class="btn" href="${pageContext.request.contextPath}/deleteGenre">Delete</a></div>
</div>
</div>
</body>
</html>
