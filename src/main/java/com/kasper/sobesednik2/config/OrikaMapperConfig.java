package com.kasper.sobesednik2.config;

import com.kasper.sobesednik2.dto.QuestionDtoShort;
import com.kasper.sobesednik2.entities.Question;
import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.ConfigurableMapper;

public class OrikaMapperConfig extends ConfigurableMapper {

    protected void configure(MapperFactory factory) {

        factory.classMap(Question.class, QuestionDtoShort.class)
                .byDefault()
                .register();


    }
}
