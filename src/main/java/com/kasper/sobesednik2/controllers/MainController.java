package com.kasper.sobesednik2.controllers;

import com.kasper.sobesednik2.dto.QuestionDtoShort;
import com.kasper.sobesednik2.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("/sobesednik")
public class MainController {
    @Autowired
    private TestService testService;

    private static String htmlName;

    @RequestMapping("")
    public List showMeQuestions() {
        List arraylist = testService.showMeQuestions();
        for (Object a : arraylist
        ) {
            System.out.println(a.toString() + "  ");
        }
        return testService.showMeQuestions();
    }

    @RequestMapping("/examen")
    public ModelAndView showMeRandomQuestion(Model model) {
        try{
            QuestionDtoShort question= testService.showMeRandomQuestion();
            model.addAttribute("question", question);
            htmlName = "examen";
        }
        catch (Exception e){
            htmlName = "finish";
        }


        ModelAndView modelAndView = new ModelAndView(htmlName);
        return modelAndView;
    }

}
