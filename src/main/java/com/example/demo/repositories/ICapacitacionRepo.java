package com.example.demo.repositories;

import com.example.demo.models.Capacitacion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICapacitacionRepo extends JpaRepository<Capacitacion, Integer> {
}
