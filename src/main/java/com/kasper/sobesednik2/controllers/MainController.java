package com.kasper.sobesednik2.controllers;

import com.kasper.sobesednik2.dto.QuestionDtoShort;
import com.kasper.sobesednik2.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sobesednik")
public class MainController {
    @Autowired
    private TestService testService;

    @RequestMapping("")
    public List showMeQuestions() {
        List arraylist = testService.showMeQuestions();
        for (Object a : arraylist
        ) {
            System.out.println(a.toString() + "  ");
        }
        return testService.showMeQuestions();
    }
    @RequestMapping("/random")
    public QuestionDtoShort showMeRandomQuestion() {
        return testService.showMeRandomQuestion();
    }
    
}
