<!-- src/main/webapp/WEB-INF/jsp/attendance.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Attendance Form</title>
</head>
<body>
    <h2>Add Attendance</h2>
    <form action="/attendance" method="post">
        <label for="studentName">Student Name:</label>
        <input type="text" id="studentName" name="studentName" required>
        <br>
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>
        <br>
        <label for="present">Present:</label>
        <input type="checkbox" id="present" name="present">
        <br>
        <button type="submit">Submit</button>
    </form>

    <br>

    <a href="/">Back to Attendance List</a>
</body>
</html>
