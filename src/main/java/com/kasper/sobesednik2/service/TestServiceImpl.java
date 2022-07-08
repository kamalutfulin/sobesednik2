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
import java.util.List;

@Service
public class TestServiceImpl implements TestService {
    static private int index = -1;
    static private int score = 0;
    @Autowired
    private TestRepositorie testRepositorie;
    MapperFacade mapperFacade = new OrikaMapperConfig();
    List<Question> arrayList = new ArrayList<>();


    @Override
    public List showMeQuestions() {
        List<Question> allQuestion = testRepositorie.findAll();
        return allQuestion;
    }

    @Override

    public QuestionDtoShort showMeRandomQuestion() {
        if (arrayList.isEmpty()) {
            arrayList = makeRandomQuestions();
        }
        index++;
        if (arrayList.size()==index){
            arrayList.clear();
            index = -1;
        }
        return mapperFacade.map(arrayList.get(index), QuestionDtoShort.class);

    }

    @Transactional
    public List makeRandomQuestions() {

        List<Question> allQuestion = testRepositorie.findAll();
        Collections.shuffle(allQuestion);
        return allQuestion;
    }

}
