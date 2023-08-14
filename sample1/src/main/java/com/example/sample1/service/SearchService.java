package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Search;

public interface SearchService {
	List<Search> searchAll(HashMap<String, Object> map);
}
