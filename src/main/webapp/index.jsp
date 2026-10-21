

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Management System</title>
<style>
* { box-sizing: border-box; }

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f1f5f9;
    color: #1e293b;
}

header {
    background: #172554;
    color: white;
    text-align: center;
    padding: 30px 15px;
}

header h1 { margin: 0 0 10px; }
header p { color: #cbd5e1; }

.container {
    max-width: 1100px;
    margin: 45px auto;
    padding: 0 20px;
}

.container > h2 {
    text-align: center;
    margin-bottom: 30px;
}

.modules {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
    gap: 25px;
}

.module {
    background: white;
    padding: 30px 20px;
    text-align: center;
    border-radius: 12px;
    box-shadow: 0 4px 15px #00000012;
    transition: transform .2s;
}

.module:hover { transform: translateY(-5px); }

.emoji { font-size: 44px; }
.module h3 { color: #1d4ed8; }
.module p { color: #64748b; line-height: 1.6; min-height: 48px; }

.btn {
    display: inline-block;
    padding: 12px 18px;
    background: #2563eb;
    color: white;
    text-decoration: none;
    border-radius: 6px;
}

.btn:hover { background: #1d4ed8; }

footer {
    background: #172554;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: 60px;
}
</style>
</head>
<body>

<header>
    <h1>🎬 Movie Management System</h1>
    <p>Manage movies, actors, genres and directors</p>
</header>

<div class="container">
    <h2>Select Management Module</h2>

    <div class="modules">

        <div class="module">
            <div class="emoji">🎥</div>
            <h3>Movie Management</h3>
            <p>Create, fetch, update and delete movies.</p>
            <a class="btn"
               href="${pageContext.request.contextPath}/movieManagement">
               Manage Movies
            </a>
        </div>

        <div class="module">
            <div class="emoji">🎭</div>
            <h3>Actor Management</h3>
            <p>Create, fetch, update and delete actors.</p>
            <a class="btn"
               href="${pageContext.request.contextPath}/actorManagement">
               Manage Actors
            </a>
        </div>

        <div class="module">
            <div class="emoji">📚</div>
            <h3>Genre Management</h3>
            <p>Create, fetch, update and delete genres.</p>
            <a class="btn"
               href="${pageContext.request.contextPath}/genreManagement">
               Manage Genres
            </a>
        </div>

        <div class="module">
            <div class="emoji">🎬</div>
            <h3>Director Management</h3>
            <p>Create, fetch, update and delete directors.</p>
            <a class="btn"
               href="${pageContext.request.contextPath}/directorManagement">
               Manage Directors
            </a>
        </div>

    </div>
</div>

<footer>
    Movie Management System | Spring MVC and JPA
</footer>

</body>
</html>

