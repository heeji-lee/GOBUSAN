package com.project.busan;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.project.dto.Quesetion;
import com.project.service.QuesetionService;

@Controller
@RequestMapping("/quesetion")
public class QuesetionController {
	@Autowired
	private QuesetionService qService;
	
	@GetMapping("admin_list")
	public void findAll(String field, String word, String strPageNum, Model model) {
		strPageNum = (strPageNum == null) ? "1" : strPageNum;
		int pageNum = Integer.parseInt(strPageNum);
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("field", field);
		hm.put("word", word);

		int totalCount = qService.getCount(hm);
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
		List<Quesetion> list = qService.findAll(hm);

		model.addAttribute("list", list);
		model.addAttribute("count", totalCount);
		model.addAttribute("page", page);
		model.addAttribute("field", field);
		model.addAttribute("word", word);
	}
	
	@GetMapping("admin_view")
	public String view(int qnum, Model model) {
		Quesetion quesetion = qService.findByNum(qnum);
		model.addAttribute("quesetion", quesetion);
		return "quesetion/admin_view";
	}
	
	@DeleteMapping("admin_delete/{qnum}")
	@ResponseBody
	public String delete(@PathVariable int qnum) {
		qService.delete(qnum);
		return "success";
	}
	
	@GetMapping("insert")
	public void insert() {
		
	}

	@PostMapping("insert")
	public String insert(Quesetion quesetion, HttpServletRequest request) throws IOException {
		String saveDir = request.getSession().getServletContext().getRealPath("/");
		saveDir += "resources\\upload\\";
		MultipartFile f = quesetion.getUploadFile();
		String fileName = "";
		if(!f.isEmpty()) {
			String orifileName = f.getOriginalFilename();
			//파일명 지정
			UUID uuid = UUID.randomUUID();
			fileName = uuid+"_"+orifileName;
			f.transferTo(new File(saveDir+fileName));
			quesetion.setQimg(fileName);
		}
		qService.insert(quesetion);
		return "redirect: /busan";
	}
}