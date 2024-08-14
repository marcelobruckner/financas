package com.bruckner.financas.controllers;

import com.bruckner.financas.models.InvestimentoModel;
import com.bruckner.financas.service.InvestimentoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class InvestimentoController {

    @Autowired
    private InvestimentoService investimentoService;

    @GetMapping
    public List<InvestimentoModel> listar() {
        return investimentoService.listar();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public InvestimentoModel adicionar(@RequestBody InvestimentoModel model) {
        return investimentoService.adicionar(model);
    }
    
}
