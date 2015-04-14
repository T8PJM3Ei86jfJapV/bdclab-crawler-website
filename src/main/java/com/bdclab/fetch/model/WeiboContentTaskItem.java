package com.bdclab.fetch.model;

public class WeiboContentTaskItem {
	private String submitId;
	private String projectName;
	private WeiboContentSearchPara para;
	private String creator;
	private int taskStatus;
	private String outputFileName;

	public WeiboContentTaskItem() {
		
	}
	
	public WeiboContentTaskItem(String submitId, String projectName, WeiboContentSearchPara para, String creator, int taskStatus, String outputFileName) {
		this.submitId = submitId;
		this.projectName = projectName;
		this.para = para;
		this.creator = creator;
		this.taskStatus = taskStatus;
		this.outputFileName = outputFileName;
	}
	
	public String getSubmitId() {
		return submitId;
	}
	
	public String getProjectName() {
		return projectName;
	}
	
	public String getKeyword() {
		return para.getKeyword();
	}
	
	public String getProvince() {
		return para.getProvince();
	}
	
	public String getCity() {
		return para.getCity();
	}
	
	public String getStartTime() {
		return para.getStime();
	}
	
	public String getEndTime() {
		return para.getEtime();
	}
	
	public int getInterval() {
		return para.getInterval();
	}
	
	public String getCreator() {
		return creator;
	}
	
	public int getTaskStatus() {
		return taskStatus;
	}
	
	public String getOutPutFileName() {
		return outputFileName;
	}
}
