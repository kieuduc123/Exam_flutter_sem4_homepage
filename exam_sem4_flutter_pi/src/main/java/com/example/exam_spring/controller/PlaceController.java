package com.example.exam_spring.controller;

import com.example.exam_spring.entity.Place;
import com.example.exam_spring.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/api/v1/place")
@RestController
public class PlaceController {
    @Autowired
    private PlaceService placeService;




    @GetMapping
    public List<Place> getAll() {
        return placeService.getAllPlace();
    }


}
