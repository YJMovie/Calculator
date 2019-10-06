package board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;


@WebServlet("/Board/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardDAO dao = new BoardDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("list.do")) {
			
			BoardDAO dao = new BoardDAO();
			List<BoardDTO> list = dao.list();
			request.setAttribute("list", list);
			
			String page = "/board/list.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		} else if (url.contains("info.do")) {
			int num = Integer.parseInt(request.getParameter("num"));
			BoardDTO dto = dao.info(num);
			request.setAttribute("dto", dto);
			
			String page = "/board/info.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
