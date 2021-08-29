package com.kasper.sobesednik2.service;

import com.kasper.sobesednik2.config.OrikaMapperConfig;
import com.kasper.sobesednik2.dto.QuestionDtoShort;
import com.kasper.sobesednik2.entities.Question;
import com.kasper.sobesednik2.repositories.TestRepositorie;
import ma.glasnost.orika.MapperFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

@Service
public class TestServiceImpl implements TestService {
    static private int COUNT = -1;
    static private int index = -1;
    @Autowired
    private TestRepositorie testRepositorie;
    MapperFacade mapperFacade = new OrikaMapperConfig();
    List<QuestionDtoShort> arraylist = new LinkedList<>();
    ArrayList<Integer> numbers = new ArrayList<>();

    @Override
    public List showMeQuestions() {
        List<Question> allQuestion = testRepositorie.findAll();
        return allQuestion;
    }

    @Override
    @Transactional
    public QuestionDtoShort showMeRandomQuestion() {
        if (COUNT == -1) {

            List<Question> allQuestion = testRepositorie.findAll();
            for (int i = 0; i < allQuestion.size(); i++) {
                numbers.add(i);
            }
            Collections.shuffle(numbers);
            COUNT = 0;
        }
        index++;

        if (index >= 0 && index < numbers.size()){

            return mapperFacade.map(testRepositorie.getById(numbers.get(index)), QuestionDtoShort.class);
        }
        COUNT = -1;
        System.out.println("Заново");
        showMeRandomQuestion();
   return null; }

}
