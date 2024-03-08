package com.project.busan;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.dto.Member;
import com.project.dto.Page;
import com.project.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService mService;
	
	@GetMapping("admin_list")
	public void findAll(String field, String word, String strPageNum, Model model) {
		strPageNum = (strPageNum == null) ? "1" : strPageNum;
		int pageNum = Integer.parseInt(strPageNum);
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("field",field);
		hm.put("word", word);

		int totalCount = mService.getCount(hm);
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
		List<Member> list = mService.findAll(hm);

		model.addAttribute("list", list);
		model.addAttribute("count", totalCount);
		model.addAttribute("page", page);
		model.addAttribute("field", field);
		model.addAttribute("word", word);
	}
	
	@GetMapping("admin_view")
	public String view(String id, Model model) {
		Member member = mService.findById(id);
		model.addAttribute("member", member);
		return "member/admin_view";
	}
	
	@GetMapping("join")
	public void join() {
		
	}
	
	@GetMapping("idCheck")
	public void idCheck() {
		
	}
	
	//아이디 중복확인
	@PostMapping("idCheck")
	@ResponseBody
	public String idCheck(String id) {
		Member member = mService.findById(id);
		String result = "";
		if(member==null) result = "success";
		else result = "fail";
		return result;
	}
	
	//회원가입
	@PostMapping("join")
	public String join(Member member) {
		mService.insert(member);
		return "redirect: login";
	}
	
	
	@GetMapping("login")
	public void login() {
		
	}
	
	//로그인 체크
	@PostMapping("loginCheck")
	@ResponseBody
	public String login(HttpSession session, String id, String pwd) {
		Member member = mService.findById(id);
		String result="";
		if(member==null&&member.getPwd()!=pwd) {
			result="fail";
		}else if(member.getPwd().equals(pwd)) {
			session.setAttribute("sessionId", id);
			result="success";
		}
		return result;
	}
	
	//로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect: login";
	}
	
	//수정하기
	@GetMapping("update")
	public String update(Model model, HttpSession session) {
		String id = (String)session.getAttribute("sessionId");
		Member member = mService.findById(id);
		model.addAttribute("member",member);
		return "member/update";
	}
	
	@PutMapping("update")
	@ResponseBody
	public String update(@RequestBody Member member, HttpSession session) {
		mService.update(member);
		session.invalidate();
		return "success";
	}
		
	//탈퇴하기
	@GetMapping("delete")
	public String delete(HttpSession session) {
		String id = (String)session.getAttribute("sessionId");
		session.invalidate();
		mService.delete(id);
		return "redirect: login";
	}
}