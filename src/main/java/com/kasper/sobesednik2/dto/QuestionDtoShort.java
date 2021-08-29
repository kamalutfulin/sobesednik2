package com.kasper.sobesednik2.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class QuestionDtoShort {
    @JsonProperty("question")
    private String question;
    @JsonProperty("answer")
    private String answer;



    public QuestionDtoShort() {
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return question +"/n" + "\n" + answer;
    }
}
