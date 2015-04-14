package com.bdclab.fetch.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.bdclab.fetch.model.WeiboContentTaskItem;

public class WeiboContentTaskDAO {

	private Connection con = null;

	private String url = "jdbc:mysql://localhost:3306/db4testing?useUnicode=true&characterEncoding=UTF-8";
	private String user = "hack";
	private String password = "password";

	public WeiboContentTaskDAO() {

	}

	private void createConnection() {
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {

				e.printStackTrace();
			}
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class.getName());
			lgr.log(Level.SEVERE, e.getMessage(), e);
		}
	}

	private void releaseConnection() {
		try {
			if (con != null) {
				con.close();
			}

		} catch (SQLException e) {
			Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class.getName());
			lgr.log(Level.WARNING, e.getMessage(), e);
		}
	}

	public String getVersion() {
		String outcome = null;

		Statement st = null;
		ResultSet rs = null;

		try {
			createConnection();
			st = con.createStatement();
			rs = st.executeQuery("SELECT VERSION()");
			if (rs.next()) {
				outcome = rs.getString(1);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (st != null) {
					st.close();
				}

			} catch (SQLException ex) {
				Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class
						.getName());
				lgr.log(Level.WARNING, ex.getMessage(), ex);
			} finally {
				releaseConnection();
			}
		}

		return outcome;
	}

	public void insert(WeiboContentTaskItem item) {

		String sql = "INSERT INTO weibo_content_crawling_task "
				+ "(submit_id, project_name, keyword, province, city, "
				+ "start_time, end_time, time_interval, creator, task_status, output_file_name) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		PreparedStatement ps = null;

		try {
			createConnection();

			ps = con.prepareStatement(sql);

			ps.setString(1, item.getSubmitId());
			ps.setString(2, item.getProjectName());
			ps.setString(3, item.getKeyword());
			ps.setString(4, item.getProvince());
			ps.setString(5, item.getCity());
			ps.setString(6, item.getStartTime());
			ps.setString(7, item.getEndTime());
			ps.setInt(8, item.getInterval());
			ps.setString(9, item.getCreator());
			ps.setInt(10, item.getTaskStatus());
			ps.setString(11, item.getOutPutFileName());

			ps.executeUpdate();
		} catch (SQLException e) {
			Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class.getName());
			lgr.log(Level.WARNING, e.getMessage(), e);
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException ex) {
				Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class
						.getName());
				lgr.log(Level.WARNING, ex.getMessage(), ex);
			} finally {
				releaseConnection();
			}
		}

	}

	public List<Map<String, String>> checkBySubmitId(String submitId) {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();

		Statement stmt = null;
		String sql = "SELECT keyword, province, city, start_time, end_time, time_interval, "
				+ "task_status, output_file_name FROM weibo_content_crawling_task "
				+ "WHERE submit_id=\""+ submitId + "\"";
		
	    try {
	    	createConnection();
	        stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {	        	
	        	Map<String, String> map = new HashMap<String, String>();
	        	map.put("keyword", rs.getString("keyword"));
	        	map.put("province", rs.getString("province"));
	        	map.put("city", rs.getString("city"));
	        	map.put("start_time", rs.getString("start_time"));
	        	map.put("end_time", rs.getString("end_time"));
	        	map.put("time_interval", rs.getString("time_interval"));
	        	
	        	int statusInt = rs.getInt("task_status");
	        	String status = "待执行";
	        	if (statusInt == 1) {
	        		status = "已完成";
	        	}
	        	if (statusInt == 2) {
	        		status = "失败";
	        	}
	        	map.put("task_status", status);

	        	map.put("output_file_name", rs.getString("output_file_name"));
	        	
	        	items.add(map);
	        }
	    } catch (SQLException e ) {
			Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class.getName());
			lgr.log(Level.WARNING, e.getMessage(), e);
	    } finally {
	    	try {
	    		if (stmt != null) {
	    			stmt.close();
	    		}
	    	} catch (SQLException e ) {
				Logger lgr = Logger.getLogger(WeiboContentTaskDAO.class.getName());
				lgr.log(Level.WARNING, e.getMessage(), e);
	    	} finally {
	    		releaseConnection();
	    	}
	    }

		return items;
	}
}
