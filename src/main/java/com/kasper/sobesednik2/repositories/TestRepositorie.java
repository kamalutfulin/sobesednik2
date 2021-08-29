package com.kasper.sobesednik2.repositories;

import com.kasper.sobesednik2.entities.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TestRepositorie extends JpaRepository<Question,Integer> {
    List<Question> findAll();
}
