package com.kasper.sobesednik2.entities;

import javax.persistence.*;

@Entity
@Table(name = "questions")
public class Question {
    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "question",length = 7000)
    private String question;

    @Column(name = "answer",length = 7000)
    private String answer;


    public Question() {
    }

    public Question(String question) {
        this.question = question;
        this.answer = answer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
        return question + answer;
    }
}

