package com.example.dms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.dms.model.SurveyResponse;
import com.example.dms.repository.SurveyResponseRepository;

@Controller
@RequestMapping("/surveys")
public class SurveyController {

    @Autowired
    private SurveyResponseRepository surveyResponseRepository;
    
    @RequestMapping("/dashboard")
	public String dashboard()
	{
		return "dashboard";
	}
    @PostMapping
    @ResponseBody
    public ResponseEntity<String> saveSurveyResponse(
        @RequestParam("question[]") String question,
        @RequestParam("questionType") String questionType,
        @RequestParam(value = "answerText", required = false) String answerText
    ) {
        // Create a new SurveyResponse object and populate it with the form data
        SurveyResponse surveyResponse = new SurveyResponse();
        surveyResponse.setQuestion(question);
        surveyResponse.setQuestionType(questionType);
        surveyResponse.setAnswerText(answerText);

        // Perform data validation and any other necessary processing
        surveyResponseRepository.save(surveyResponse);
        return ResponseEntity.ok("Survey response saved successfully.");
    }
    @RequestMapping("/survey1/{surveyIndex}")
	public ModelAndView survey1(@RequestParam("surveyIndex") long sid)
	{
		ModelAndView mv = new ModelAndView("survey1");
		SurveyResponse sr = surveyResponseRepository.findById(sid).get();
		System.out.println(sid);
		mv.addObject("s1", sr);
		return mv;
		
	}

}
