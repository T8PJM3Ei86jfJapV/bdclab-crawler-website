package com.bdclab.fetch.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.security.SecureRandom;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bdclab.fetch.dao.WeiboContentTaskDAO;
import com.bdclab.fetch.model.CSVReader;
import com.bdclab.fetch.model.WeiboContentSearchPara;
import com.bdclab.fetch.model.WeiboContentTaskItem;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {

		return "login";
	}	

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String upload(Model model) {

		return "upload";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@RequestParam("name") String projectName,
			@RequestParam("file") MultipartFile file, @ModelAttribute("mapping1Form") final Object mapping1FormObject,
	        final BindingResult mapping1BindingResult,
	        final Model model,
	        final RedirectAttributes redirectAttributes) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				// String rootPath = System.getProperty("catalina.home");
				File dir = new File(File.separator + "home" + File.separator + "rico" + File.separator + "Storage" + File.separator + "fetching-upload");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				String date = new SimpleDateFormat("yyyyMMdd").format(new Date());
				String randomDigit = String.valueOf(new BigInteger(32, new SecureRandom()).toString());
				String submitId = date + "-" + randomDigit;

				String fileName = dir.getPath() + File.separator + submitId + ".csv";
				File serverFile = new File(fileName);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				// System.out.println(fileName);
				
				CSVReader reader = new CSVReader(fileName);
				List<WeiboContentSearchPara> rows = reader.getCommands();
				for (int i = 0; i != rows.size(); ++i) {
					WeiboContentTaskItem task = new WeiboContentTaskItem(submitId, projectName, rows.get(i),  "", 0, "");
					
					WeiboContentTaskDAO db = new WeiboContentTaskDAO();
					db.insert(task);

				}
				
				String info = "任务已成功提交并等待执行，请记录本次提交编号【" + submitId + "】，切勿重新提交！";
				redirectAttributes.addFlashAttribute("mapping1Form", info);
				return "redirect:/uploading_status";
			} catch (Exception e) {
				redirectAttributes.addFlashAttribute("mapping1Form", "任务提交失败，文件格式或编码错误！提示信息：" + e.toString());
				return "redirect:/uploading_status";
			}
		} else {
			return "redirect:/upload";
		}
	}
	
	@RequestMapping(value = "/uploading_status", method = RequestMethod.GET)
	public String uploading(Map<String, Object> map, @ModelAttribute("mapping1Form") final Object mapping1FormObject,
	        final BindingResult mapping1BindingResult,
	        final Model model) {

	    /* do some process and send back the data */
		model.addAttribute("status", mapping1FormObject);
		
		return "uploading_status";
	}
	
	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String check(Model model) {
		return "check";
	}
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String check(@RequestParam("submitId") String submitId, @ModelAttribute("mapping2Form") final Object mapping2FormObject,
	        final BindingResult mapping2BindingResult,
	        final Model model,
	        final RedirectAttributes redirectAttributes) {

		//model.addAttribute("status", mapping2FormObject);
		redirectAttributes.addFlashAttribute("mapping2Form", submitId);
		return "redirect:/list_tasks_by_submitting";
		
	}
	
	@RequestMapping(value = "/list_tasks_by_submitting", method = RequestMethod.GET)
	public String list_tasks_by_submitting(Map<String, Object> map, @ModelAttribute("mapping2Form") final Object mapping2FormObject,
	        final BindingResult mapping1BindingResult,
	        final Model model) {

	    /* do some process and send back the data */
		String submitId = String.valueOf(mapping2FormObject);
		
		WeiboContentTaskDAO db = new WeiboContentTaskDAO();
		List<Map<String, String>> items = db.checkBySubmitId(submitId);

		model.addAttribute("items", items);
		
		return "list_tasks_by_submitting";
	}

}
