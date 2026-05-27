package com.example.examen.vuelos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.examen.vuelos.entidades.Vuelo;
import com.example.examen.vuelos.repositories.VueloRepository;

@Service
public class VueloService {

    @Autowired
    private VueloRepository repository;

    public Vuelo guardar(Vuelo vuelo) {
        return repository.save(vuelo);
    }

    public List<Vuelo> listar() {
        return repository.findAll();
    }

    public Vuelo buscarPorId(Integer id) {
        return repository.findById(id).orElse(null);
    }

    public Vuelo actualizar(Integer id, Vuelo vuelo) {

        Vuelo existente = repository.findById(id).orElse(null);

        if (existente != null) {
            existente.setCodigo(vuelo.getCodigo());
            existente.setPrecioBoleto(vuelo.getPrecioBoleto());
            existente.setAsientosDisponibles(vuelo.getAsientosDisponibles());
            existente.setDestino(vuelo.getDestino());

            return repository.save(existente);
        }

        return null;
    }

    public boolean eliminar(Integer id) {

        Vuelo vuelo = repository.findById(id).orElse(null);

        if (vuelo != null) {
            repository.delete(vuelo);
            return true;
        }

        return false;
    }

    public List<Vuelo> buscarMenorPrecio(double precio){
        return repository.findByPrecioBoletoLessThan(precio);
    }
}