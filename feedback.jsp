<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .feedback-container {
            width: 80%;
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"], textarea, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            resize: vertical;
        }

        .rating-options {
            display: flex;
            justify-content: space-between;
            margin-top: 5px;
        }

        .rating-options input {
            margin-right: 5px;
        }

        .btn-submit {
            margin-top: 20px;
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-submit:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>

<div class="feedback-container">
    <h3>Feedback Form</h3>
    <form action="submitFeedback" method="post">
        <!-- User Details -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" placeholder="Enter your email" required>

        <!-- General Platform Feedback -->
        <label for="navigation">How easy is it to navigate the platform?</label>
        <select id="navigation" name="navigation" required>
            <option value="">Select an option</option>
            <option value="Very Easy">Very Easy</option>
            <option value="Easy">Easy</option>
            <option value="Neutral">Neutral</option>
            <option value="Difficult">Difficult</option>
            <option value="Very Difficult">Very Difficult</option>
        </select>

        <!-- Course Content Feedback -->
        <label for="contentRating">Rate the course content:</label>
        <div class="rating-options">
            <label><input type="radio" name="contentRating" value="1" required> 1</label>
            <label><input type="radio" name="contentRating" value="2"> 2</label>
            <label><input type="radio" name="contentRating" value="3"> 3</label>
            <label><input type="radio" name="contentRating" value="4"> 4</label>
            <label><input type="radio" name="contentRating" value="5"> 5</label>
        </div>

        <!-- Open Feedback -->
        <label for="comments">Additional Comments:</label>
        <textarea id="comments" name="comments" rows="5" placeholder="Write your feedback here..."></textarea>

        <!-- Submit Button -->
        <button type="submit" class="btn-submit">Submit Feedback</button>
    </form>
</div>

</body>
</html>
