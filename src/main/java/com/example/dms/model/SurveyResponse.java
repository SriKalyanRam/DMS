package com.example.dms.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class SurveyResponse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    // Fields corresponding to the form data
    private String question;  // The question text
    private String questionType;  // The question type (e.g., "text", "radio", "checkbox")
    private String answerText;  // For text-type questions, store the answer here
    // You may need additional fields if you have more complex data to store.
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	public String getAnswerText() {
		return answerText;
	}
	public void setAnswerText(String answerText) {
		this.answerText = answerText;
	}
	@Override
	public String toString() {
		return "SurveyResponse [id=" + id + ", question=" + question + ", questionType=" + questionType
				+ ", answerText=" + answerText + "]";
	}

    // Getters and setters
}
