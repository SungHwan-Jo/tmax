package com.tmax.app;

import java.util.HashMap;
import java.util.Map;

public class MemoryTest {
	private final static Map<String, String> leakMap = new HashMap<>();
	private final static String SAVE_DATA = "SAVE_DATA";
	
	public void addObject(int objectCount) {
		int mapSize = leakMap.size();
		int maxCount = mapSize + objectCount;
		
		for(int i = mapSize; i < maxCount; i++) {
			leakMap.put(SAVE_DATA + i, SAVE_DATA);
		}
	}
	

}
