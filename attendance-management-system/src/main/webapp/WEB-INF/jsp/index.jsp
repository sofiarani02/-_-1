<!-- src/main/webapp/WEB-INF/jsp/index.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attendance Management System</title>
</head>
<body>
    <h2>Attendance List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Student Name</th>
                <th>Date</th>
                <th>Present</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="attendance" items="${attendances}">
                <tr>
                    <td>${attendance.id}</td>
                    <td>${attendance.studentName}</td>
                    <td>${attendance.date}</td>
                    <td>${attendance.present}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>

    <a href="/attendance">Add Attendance</a>
</body>
</html>
