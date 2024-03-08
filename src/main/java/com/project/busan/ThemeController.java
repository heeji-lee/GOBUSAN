package com.project.busan;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.dto.Page;
import com.project.dto.Theme;
import com.project.service.ThemeService;

@Controller
@RequestMapping("/theme")
public class ThemeController {
	@Autowired
	private ThemeService tservice;
	
	@GetMapping("admin_insert")
	@PreAuthorize("isAuthenticated()")
	public void insert() {
		
	}

	@PostMapping("admin_insert")
	@PreAuthorize("isAuthenticated()")
	public String insert(Theme theme, HttpServletRequest request) throws IOException {
		String saveDir = request.getSession().getServletContext().getRealPath("/");
		saveDir += "resources\\upload\\";
		MultipartFile f = theme.getUploadFile();
		String fileName = "";
		if(!f.isEmpty()) {
			String orifileName = f.getOriginalFilename();
			//파일명 지정
			UUID uuid = UUID.randomUUID();
			fileName = uuid+"_"+orifileName;
			f.transferTo(new File(saveDir+fileName));
			theme.setTimg(fileName);
		}
		tservice.insert(theme);
		return "redirect: admin_list";
	}
	
	@GetMapping("admin_list")
	public void findAll(String field, String word, String strPageNum, Model model) {
		strPageNum = (strPageNum == null) ? "1" : strPageNum;
		int pageNum = Integer.parseInt(strPageNum);
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("field", field);
		hm.put("word", word);

		int totalCount = tservice.getCount(hm);
		int pageSize = 10;
		int pageBlock = 5;
		int pageCount = (int) Math.ceil((double) totalCount / pageSize);
		int startPage = ((pageNum / pageBlock) - (pageNum % pageBlock == 0 ? 1 : 0)) * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) {
			endPage = pageCount;
		}
		Page page = new Page();
		page.setTotalCount(totalCount);
		page.setPageCount(pageCount);
		page.setPageBlock(pageBlock);
		page.setStartPage(startPage);
		page.setEndPage(endPage);
		page.setPageNum(pageNum);

		int startRow = (pageNum - 1) * pageSize;
		hm.put("startRow", startRow);
		hm.put("pageSize", pageSize);
		List<Theme> list = tservice.findAll(hm);

		model.addAttribute("list", list);
		model.addAttribute("count", totalCount);
		model.addAttribute("page", page);
		model.addAttribute("field", field);
		model.addAttribute("word", word);
	}
	
	@GetMapping("admin_view")
	public String view(int num, Model model) {
		tservice.hitCount(num);
		Theme theme = tservice.findByNum(num);
		model.addAttribute("theme", theme);
		return "theme/admin_view";
	}
	
	@GetMapping("admin_update")
	public String update(Model model, int num) {
		Theme theme = tservice.findByNum(num);
		model.addAttribute("theme", theme);
		return "theme/admin_update";
	}
	
	@PostMapping("admin_update")
	public String update(Theme theme) {
		tservice.update(theme);
		return "redirect: admin_list";
	}
	
	@DeleteMapping("admin_delete/{num}")
	@ResponseBody
	public String delete(@PathVariable int num) {
		tservice.delete(num);
		return "success";
	}
	
	@GetMapping("list")
	public void findAll(Model model, String field, String word, String strPageNum) {
		strPageNum = (strPageNum == null) ? "1" : strPageNum;
		int pageNum = Integer.parseInt(strPageNum);
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("field", field);
		hm.put("word", word);

		int totalCount = tservice.getCount(hm);
		int pageSize = 10;
		int pageBlock = 5;
		int pageCount = (int) Math.ceil((double) totalCount / pageSize);
		int startPage = ((pageNum / pageBlock) - (pageNum % pageBlock == 0 ? 1 : 0)) * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount) {
			endPage = pageCount;
		}
		Page page = new Page();
		page.setTotalCount(totalCount);
		page.setPageCount(pageCount);
		page.setPageBlock(pageBlock);
		page.setStartPage(startPage);
		page.setEndPage(endPage);
		page.setPageNum(pageNum);

		int startRow = (pageNum - 1) * pageSize;
		hm.put("startRow", startRow);
		hm.put("pageSize", pageSize);
		List<Theme> list = tservice.findAll(hm);

		model.addAttribute("list", list);
		model.addAttribute("count", totalCount);
		model.addAttribute("page", page);
		model.addAttribute("field", field);
		model.addAttribute("word", word);
	}
	
	@GetMapping("view")
	public String view(Model model, int num) {
		tservice.hitCount(num);
		Theme theme = tservice.findByNum(num);
		model.addAttribute("theme", theme);
		return "theme/view";
	}
}