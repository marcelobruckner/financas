package com.bruckner.financas.api;

import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/api/")
public class FinancasApi {

    private List<String> cursos = Arrays.asList("Investimento", "CDB", "Tesouro Direto");

    @GetMapping("cursos")
    public List<String> list() {
        System.out.println(new Date());
        return cursos;
    }
    

    
}
