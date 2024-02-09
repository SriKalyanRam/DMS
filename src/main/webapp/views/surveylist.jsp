<!DOCTYPE html>
<html>
<head>
    <title>Survey Details</title>
    <!-- Include Bootstrap CSS from a CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="mt-5">Survey Details</h1>
        <div id="surveyDetails" class="bg-light p-4 rounded mt-4">
            <h2>Survey Question:</h2>
            <p id="question"></p>
            <h3>Survey Answer:</h3>
            <p id="answer"></p>
        </div>
    </div>

    <!-- Include Bootstrap JavaScript and Popper.js from CDNs -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // Parse the survey index from the query parameter
        const urlParams = new URLSearchParams(window.location.search);
        const surveyIndex = parseInt(urlParams.get('surveyIndex'), 10);

        // Fetch survey data from the API endpoint
        fetch('/surveys')
            .then(response => response.json())
            .then(data => {
                const surveyDetails = document.getElementById('surveyDetails');
                const question = document.getElementById('question');
                const answer = document.getElementById('answer');

                const survey = data[surveyIndex];
                question.textContent = survey.question;
                answer.textContent = survey.answer;
            })
            .catch(error => {
                console.error('Error fetching survey data: ' + error);
            });
    </script>
</body>
</html>
