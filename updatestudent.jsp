<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
</head>
<body>
    <h2>Update Student</h2>

    <form action="<c:url value='/updatestudent' />" method="post">
        <input type="hidden" name="id" value="${student.id}" />

        <label for="name">Name:</label>
        <input type="text" name="name" value="${student.name}" required /><br><br>

        <label for="gender">Gender:</label>
        <input type="text" name="gender" value="${student.gender}" required /><br><br>

        <label for="dateofbirth">Date of Birth:</label>
        <input type="text" name="dateofbirth" value="${student.dateofbirth}" required /><br><br>

        <label for="email">Email:</label>
        <input type="email" name="email" value="${student.email}" required /><br><br>

        <label for="password">Password:</label>
        <input type="password" name="password" value="${student.password}" required /><br><br>

        <label for="location">Location:</label>
        <input type="text" name="location" value="${student.location}" required /><br><br>

        <label for="contact">Contact:</label>
        <input type="text" name="contact" value="${student.contact}" required /><br><br>

        <button type="submit">Update Student</button>
    </form>
</body>
</html>
