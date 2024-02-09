package com.example.dms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.dms.model.SurveyResponse;

public interface SurveyResponseRepository extends JpaRepository<SurveyResponse, Long> {
    // You can define custom query methods if needed
}
