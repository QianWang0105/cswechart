package com.lion.echart.global;

import java.util.HashMap;

public class GlobalThings {
	private static HashMap<String, Object> cash = new HashMap<String, Object>();

	public static Object getCash(String key) {
		return cash.get(key);
	}

	public static void putCash(String key, Object value) {
		cash.put(key, value);
	}
	
}