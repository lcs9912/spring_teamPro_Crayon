package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Test;

public interface TestService {
	
	List<Test> searchchart(HashMap<String, Object> map);
}
