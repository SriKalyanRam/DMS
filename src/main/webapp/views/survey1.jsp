<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Survey Form</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Survey Form</h5>
                        <form id="surveyForm" action="/submit-survey" method="post">
                            
                            <div class="form-group">
                                <label for="question">Question 1</label>
                                <input type="text" class="form-control" id="question" name="question1" value="${s1.question}" placeholder="Enter your question">
                            </div>
                            <div class="form-group">
                                <label for="question">Question 2</label>
                                <input type="text" class="form-control" id="question" name="question2" placeholder="Enter your question">
                            </div>
                            <!-- Add more questions as needed -->
                            <button type="button" class="btn btn-primary" id="addQuestion">Add Question</button>
                            <button type="submit" class="btn btn-success">Submit Survey</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JavaScript and Popper.js from CDNs -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
