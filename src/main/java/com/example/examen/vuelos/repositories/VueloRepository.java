package com.example.examen.vuelos.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.examen.vuelos.entidades.Vuelo;

public interface VueloRepository extends JpaRepository<Vuelo, Integer> {

    List<Vuelo> findByPrecioBoletoLessThan(double precio);

}
