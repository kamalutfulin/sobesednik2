package com.kasper.sobesednik2.service;

import com.kasper.sobesednik2.dto.QuestionDtoShort;
import com.kasper.sobesednik2.dto.QuestionDtoShort;

import java.util.List;

public interface TestService {
    public List showMeQuestions();
    public QuestionDtoShort showMeRandomQuestion();
}
