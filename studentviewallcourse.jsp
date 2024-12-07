<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <title>Courses</title> 
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        h3 {
            color: #007BFF;
            text-align: center;
            margin-top: 50px;
        }
        
        /* Table Styles */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: white;
            font-size: 18px;
        }
        td {
            background-color: #f9f9f9;
        }
        
        /* Button Styling */
        button {
            padding: 8px 16px;
            font-size: 16px;
            color: white;
            background-color: #28a745;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #218838;
        }
        
        /* Form Styling */
        form {
            margin: 0;
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 95%;
            }
            th, td {
                font-size: 14px;
                padding: 10px;
            }
            button {
                font-size: 14px;
                padding: 6px 12px;
            }
        }
    </style>
</head> 
<body> 
    <h3>Available Courses</h3> 
    <table> 
        <tr> 
            <th>Course ID</th> 
            <th>Course Name</th> 
            <th>Course Code</th> 
            <th>Action</th> 
        </tr> 
        <c:forEach items="${courselist}" var="course"> 
            <tr> 
                <td>${course.id}</td> 
                <td>${course.name}</td> 
                <td>${course.code}</td> 
                <td> 
                    <form action="registercourse" method="post"> 
                        <input type="hidden" name="courseId" value="${course.id}" /> 
                        <button type="submit">Register</button> 
                    </form> 
                </td> 
            </tr> 
        </c:forEach> 
    </table> 
</body> 
</html>
