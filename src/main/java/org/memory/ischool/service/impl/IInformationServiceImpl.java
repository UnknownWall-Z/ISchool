package org.memory.ischool.service.impl;

import org.memory.ischool.mapper.InformationMapper;
import org.memory.ischool.service.IInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Information;

/**
 * Created by wall on 2017/9/1.
 */
@Service
public class IInformationServiceImpl implements IInformationService {

    @Autowired
    private InformationMapper mapper;

    @Override
    public Information get(long id) {
        return mapper.get(id);
    }
}
