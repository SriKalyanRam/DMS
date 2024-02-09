<!DOCTYPE html>
<html>
<head>
    <title>Survey Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4 url('your-background-image.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #007BFF;
        }

        #surveyList {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .survey-item {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 15px;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .survey-item:hover {
            transform: scale(1.05);
        }

        #surveyDetails {
            display: none;
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: rgba(255, 255, 255, 0.9);
        }

        #backButton {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        #downloadLink {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        #answer {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Survey Dashboard</h1>
    <div id="surveyList"></div>
    <div id="surveyDetails"></div>

    <script>
        const surveyList = document.getElementById('surveyList');
        const surveyDetails = document.getElementById('surveyDetails');

        // Function to display survey details
        function displaySurveyDetails(survey) {
            surveyDetails.innerHTML = `
                <h2>Survey Question:</h2>
                <p>${survey.question}</p>
                <h3>Survey Answer:</h3>
                <input type="text" id="answer" placeholder="Enter your answer">
                <button id="backButton">Back to Survey List</button>
                <a id="downloadLink" href="data:text/plain;charset=utf-8,${encodeURIComponent(survey.question)}" download="survey.txt">Download Survey</a>
            `;
            surveyDetails.style.display = 'block';

            // Add event listener to the Back button
            document.getElementById('backButton').addEventListener('click', function () {
                surveyDetails.style.display = 'none';
            });
        }

        // Fetch survey data from the API endpoint (replace with your actual API endpoint)
        fetch('/surveys')
            .then(response => response.json())
            .then(data => {
                data.forEach((survey, index) => {
                    // Create a list item for each survey
                    const surveyItem = document.createElement('div');
                    surveyItem.classList.add('survey-item');
                    surveyItem.innerHTML = `<h3>Survey ${index + 1}</h3>`;

                    // Add a click event listener to show survey details when clicked
                    surveyItem.addEventListener('click', () => {
                        displaySurveyDetails(survey);
                    });

                    surveyList.appendChild(surveyItem);
                });
            })
            .catch(error => {
                console.error('Error fetching survey data: ' + error);
            });
    </script>
</body>
</html>
