package pl.danielzurek.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.danielzurek.entity.Incident;
import pl.danielzurek.repository.IncidentRepository;


public class IncidentConverter implements Converter<String, Incident> {

    @Autowired
    private IncidentRepository incidentRepository;

    @Override
    public Incident convert(String id) {
        return this.incidentRepository.findOne(Long.parseLong(id));
    }
}

