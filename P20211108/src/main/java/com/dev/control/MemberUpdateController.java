package com.dev.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 수정작업 => 결과.jsp
		String id = req.getParameter("id");
		String passwd = req.getParameter("passwd");
		String name = req.getParameter("name");
		String mail = req.getParameter("mail");
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(passwd);
		vo.setName(name);
		vo.setMail(mail);
		
		// 수정작업DAO, Service
		MemberService service = new MemberService();
		service.update(vo);
		
		req.setAttribute("rid", id);
		req.setAttribute("rpass", passwd);
		req.setAttribute("rname", name);
		req.setAttribute("rmail", mail);
		
		// memberUpdateOutput.jsp
		
		req.getRequestDispatcher("member/memberUpdateOutput.jsp").forward(req, res);
		
	}

}
