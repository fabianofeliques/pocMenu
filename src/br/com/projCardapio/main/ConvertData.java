package br.com.projCardapio.main;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ConvertData {

	public static Date getData(String strData) throws ParseException {

		Date objDate = new SimpleDateFormat("yyyy-MM-dd").parse(strData);
		return objDate;
		}
	
}
