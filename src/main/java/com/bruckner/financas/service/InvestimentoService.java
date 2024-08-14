package com.bruckner.financas.service;

import com.bruckner.financas.models.InvestimentoModel;
import com.bruckner.financas.repositories.InvestimentoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class InvestimentoService {

    @Autowired
    private InvestimentoRepository investimentoRepository;

    @Transactional
    public InvestimentoModel adicionar (InvestimentoModel investimentoModel) {
        return investimentoRepository.save(investimentoModel);
    }

    public List<InvestimentoModel> listar() {
        return investimentoRepository.findAll();
    }
}
