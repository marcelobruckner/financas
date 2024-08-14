package com.bruckner.financas.repositories;

import com.bruckner.financas.models.InvestimentoModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InvestimentoRepository extends JpaRepository<InvestimentoModel, Long> {
}
