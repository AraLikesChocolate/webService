package com.encore.util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateUtil {
	public static Date stringToDate(String source) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date d1 = null;
		try {
			d1 = sdf.parse(source);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date date = new Date(d1.getTime());
//		System.out.println(date);
		return date;
	}
}
