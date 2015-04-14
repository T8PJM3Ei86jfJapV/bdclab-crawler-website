package com.bdclab.fetch.model;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;

public class CSVReader {
	public static final String ENCODING = "UTF-8";

	private static final String KEYWORD = "keyword";
	private static final String PROVINCE = "province";
	private static final String CITY = "city";
	private static final String START_TIME = "stime";
	private static final String END_TIME = "etime";
	private static final String INTERVAL = "interval";

	private static final String[] FILE_HEADER_MAPPING = {KEYWORD, PROVINCE,
			CITY, START_TIME, END_TIME, INTERVAL};

	private FileReader fileReader = null;
	
	public CSVReader(String fileName) {
		try {
			this.fileReader = new FileReader(fileName);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<WeiboContentSearchPara> getCommands() {
		CSVFormat fileFormat = CSVFormat.DEFAULT
				.withHeader(FILE_HEADER_MAPPING);
		CSVParser fileParser = null;
		List<WeiboContentSearchPara> paras = new ArrayList<WeiboContentSearchPara>();
		try {
			fileParser = new CSVParser(fileReader, fileFormat);
			List<CSVRecord> csvRecords = fileParser.getRecords();
			
			for (int i = 1; i < csvRecords.size(); i++) {
				CSVRecord record = csvRecords.get(i);
				
				WeiboContentSearchPara para = new WeiboContentSearchPara(record.get(KEYWORD),
						record.get(PROVINCE), record.get(CITY), record.get(START_TIME), record.get(END_TIME), Integer.valueOf(record.get(INTERVAL)));
				paras.add(para);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				fileReader.close();
				fileParser.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return paras;
	}
}
