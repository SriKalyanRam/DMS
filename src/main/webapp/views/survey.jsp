<!DOCTYPE html>
<html>
<head>
    <title>Dynamic Survey Form</title>
    <style>
        /* Styles for the form and input elements (unchanged) */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #10161f, #0c141b);
            color: #fff;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #007BFF;
        }

        #surveyForm {
            width: 60%;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #questionsContainer {
            margin-bottom: 20px;
        }

        select, input, button {
            margin: 5px;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .answerOptions input, .answerOptions button {
            margin: 5px 0;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .removeOption {
            background-color: #ff6b6b;
            color: #fff;
        }

        .removeOption:hover {
            background-color: #d63636;
        }

        /* Improved styles for the survey output */
        #surveyOutput {
            display: none;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        #outputContainer fieldset {
            margin: 15px 0;
            border: 2px solid #007BFF;
            border-radius: 10px;
            padding: 10px;
        }

        #outputContainer legend {
            color: #007BFF;
            font-weight: bold;
        }

        #outputContainer p {
            margin: 5px 0;
        }

        #outputContainer label {
            display: block;
            margin: 5px 0;
        }

        #outputContainer input[type="text"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Dynamic Survey Form</h1>
    <form id="surveyForm" action="/surveys" method="post">
        <div id="questionsContainer">
            <!-- Example Questions -->
            <div class="question">
                <h2>Question 1: What is your favorite color?</h2>
                <input type="text" name="question[]" placeholder="Enter your question">
                <select name="questionType">
                    <option value="text">Text</option>
                    <option value="radio">Radio</option>
                    <option value="checkbox">Checkbox</option>
                </select>
                <div class="answerOptions">
                    <button type="button" class="addOption">Add Option</button>
                </div>
                <button type="button" class "removeQuestion">Remove</button>
            </div>
            <div class="question">
                <h2>Question 2: How often do you exercise?</h2>
                <input type="text" name="question[]" placeholder="Enter your question">
                <select name="questionType">
                    <option value="text">Text</option>
                    <option value="radio">Radio</option>
                    <option value="checkbox">Checkbox</option>
                </select>
                <div class="answerOptions">
                    <button type="button" class="addOption">Add Option</button>
                </div>
                <button type="button" class="removeQuestion">Remove</button>
            </div>
            <!-- End of Example Questions -->
        </div>
        <button type="button" id="addQuestion">Add Question</button>
        <button type="submit" id="submitButton">Submit Survey</button>
    </form>

    <div id="surveyOutput" style="display: none;">
        <h2>Survey Output:</h2>
        <form id="surveyResultForm">
            <div id="outputContainer"></div>
        </form>
    </div>

    <script>
        // Function to add a new question
        function addQuestion() {
            const questionsContainer = document.getElementById('questionsContainer');
            const newQuestion = document.createElement('div');
            newQuestion.classList.add('question');
            newQuestion.innerHTML = `
                <h2>Question:</h2>
                <input type="text" name="question[]" placeholder="Enter your question">
                <select name="questionType">
                    <option value="text">Text</option>
                    <option value="radio">Radio</option>
                    <option value="checkbox">Checkbox</option>
                </select>
                <div class="answerOptions">
                    <button type="button" class="addOption">Add Option</button>
                </div>
                <button type="button" class="removeQuestion">Remove</button>
            `;
            questionsContainer.appendChild(newQuestion);
        }

        // Function to add an answer option
        function addOption(answerOptionsContainer) {
            const newOption = document.createElement('div');
            newOption.innerHTML = `
                <input type="text" name="options[]" placeholder="Enter option">
                <button type="button" class="removeOption">Remove Option</button>
            `;
            answerOptionsContainer.appendChild(newOption);
        }

        // Function to generate the structured survey output
        function generateSurveyResult() {
            const questions = document.querySelectorAll('.question');
            const outputContainer = document.getElementById('outputContainer');
            outputContainer.innerHTML = '';

            questions.forEach(function (question, index) {
                const questionText = question.querySelector('input[name="question[]"]').value;
                const questionType = question.querySelector('select[name="questionType"]').value;
                let questionResult = `<fieldset><legend>Question ${index + 1}:</legend><p>${questionText}</p>`;

                if (questionType === 'text') {
                    const textInput = question.querySelector('input[type="text"]');
                    questionResult += `<label>Answer:</label><input type="text" name="text_answer${index}" value="${textInput.value}"><br>`;
                } else if (questionType === 'radio' || questionType === 'checkbox') {
                    const options = question.querySelectorAll('.answerOptions input[type="text"]');
                    questionResult += '<fieldset><legend>Answer Options:</legend>';
                    options.forEach(function (option, optionIndex) {
                        questionResult += `<label><input type="${questionType}" name="answer${index}" value="${option.value}"> ${option.value}</label><br>`;
                    });
                    questionResult += '</fieldset>';
                }

                questionResult += '</fieldset>';
                outputContainer.innerHTML += questionResult;
            });

            document.getElementById('surveyOutput').style.display = 'block';
        }

        // Event listeners
        document.getElementById('addQuestion').addEventListener('click', addQuestion);

        document.getElementById('surveyForm').addEventListener('click', function (event) {
            if (event.target.classList.contains('addOption')) {
                addOption(event.target.parentElement.querySelector('.answerOptions'));
            } else if (event.target.classList.contains('removeQuestion')) {
                event.target.parentElement.remove();
            }
        });

        document.getElementById('submitButton').addEventListener('click', generateSurveyResult);
    </script>
</body>
</html>
