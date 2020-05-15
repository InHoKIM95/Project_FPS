package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/UploadService")
public class UploadService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String saveDri = request.getServletContext().getRealPath("img");
		int maxSize = 5 * 1024 * 1024;
		String encoding = "EUC-KR";
		DefaultFileRenamePolicy dfrp = new DefaultFileRenamePolicy();

		MultipartRequest multi = new MultipartRequest(request, saveDri, maxSize, encoding, dfrp);

		String filename = multi.getFilesystemName("image");

		UploadDTO dto = new UploadDTO(filename);
		
//		HttpSession session = request.getSession();
//		session.setAttribute("dto", dto);
//		response.sendRedirect("http://localhost:9000/?fname=" + filename);
//		System.out.print(dto.filename);
		
		 UploadDAO dao = new UploadDAO();

		int cnt = dao.insert(dto);
		if (cnt > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("dto", dto);
			response.sendRedirect("http://localhost:9000/?fname=" + filename);
			
		}
//			else {
//			response.sendRedirect("http://localhost:9000/?fname="+filename);
//		}

	}
}
