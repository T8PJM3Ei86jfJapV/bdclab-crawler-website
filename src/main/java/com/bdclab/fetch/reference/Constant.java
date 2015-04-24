package com.bdclab.fetch.reference;

import java.util.Date;

public class Constant {

	public static String BDC_DAILY_TOKEN = getDailyToken();
	
	private static String getDailyToken() {
		// long now = (8 * 3600000 + (long) new Date().getTime()) / 100000;
		long now = (long) new Date().getTime() / 100000 + 288;
		long today = now - now % 864;
		long check = ((today % 60649) * 167 + 524287) % 1000000;
		return String.format("%06d", check);
	}
}
