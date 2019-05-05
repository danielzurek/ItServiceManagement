package pl.danielzurek.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.danielzurek.entity.Group;
import pl.danielzurek.repository.GroupRepository;

public class GroupConverter implements Converter<String, Group> {

        @Autowired
        private GroupRepository groupRepository;

        @Override
        public Group convert(String id) {
            return this.groupRepository.findOne(Long.parseLong(id));
        }
    }
