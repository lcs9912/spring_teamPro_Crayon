package com.example.sample1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductMapper productMapper;

}
