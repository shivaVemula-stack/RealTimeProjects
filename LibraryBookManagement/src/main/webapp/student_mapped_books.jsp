<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mapping Records</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ccc;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #0056b3;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 20px;
}

.container {
	width: 50%;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.form-group button {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 4px;
	cursor: pointer;
}

.form-group button:hover {
	background-color: #0056b3;
}

.form-group.text-center {
	text-align: center; /* Aligns content (including inline-block elements like buttons) to center horizontally */
}
    </style>
</head>
<body>
 
    <h1>STUDENT-BOOK MAPPING</h1>
    <table>
        <tr>
            <th>STUDENT ID</th>
            <th>STUDENT NAME</th>
            <th>BOOK ID</th>
            <th>BOOK TITLE</th>
            <th>ISSUED LIBRARIAN</th>
        </tr>
        <c:forEach var="bookIssue" items="${bookIssues}">
            <tr>
                <td>${bookIssue.studentId}</td>
                <td>${bookIssue.studentName}</td>
                <td>${bookIssue.bookId}</td>
                <td>${bookIssue.bookTitle}</td>
                <td>${bookIssue.librarian}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
