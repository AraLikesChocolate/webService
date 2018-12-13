package com.encore.frontPattern;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.go")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String requestURI = request.getRequestURI().substring(request.getContextPath().length(),
				request.getRequestURI().length() - 3);
		System.out.println("requestURI: " + requestURI);
//		String userPath = request.getContextPath()+ "/../user/";
		response.setCharacterEncoding("utf-8");

		String signFolderName = "/ara";
		HttpSession sess = request.getSession();
		if (!(requestURI.equals(signFolderName + "/sign")) && sess.getAttribute("user") == null) {
			System.out.println(request.getContextPath() + signFolderName + "/sign.go");
			response.sendRedirect(request.getContextPath() + signFolderName + "/sign.go");
			return;
		} else if (requestURI.equals(signFolderName + "/signOut")) {
			sess.invalidate();
			response.sendRedirect("index.jsp");
			return;
		}

		CommonCtroller controller = null;
		Map<String, Object> map = new HashMap<>();
		String page = null;
		String method = request.getMethod().toLowerCase();
		map.put("method", method);

		switch (requestURI) {
		// 1. sign
		case "/ara/sign":
			controller = new LoginController();
			if (method.equals("get")) {
				
			} else {
				map.put("id", request.getParameter("id"));
				map.put("psw", request.getParameter("psw"));
			}
			break;
			
		case "/ara/mypage":
//			controller = new LoginController();
			if (method.equals("get")) {
				page = "index.jsp";
			} else {
				map.put("id", request.getParameter("id"));
				map.put("psw", request.getParameter("psw"));
			}
			break;

		case "ara/signUp/signUp.go":
//			controller = new UploadMajorCtr();
//			map.put("path", request.getServletContext().getRealPath("csvfile") + "\\major.csv");
//			page = userPath + "crudResult.jsp";
			break;

		default:
			break;
		}
		controller.execute(map);

		// 로그인 인증되면 index.jsp로 이동, 인증되지 않으면 sign.jsp로 이동 --> redirect 해야함
		Object result = map.get("loginResult");
		if (result != null) {
			if (((String) result).equals("yes")) {
				sess.setAttribute("user", map.get("user"));
				response.sendRedirect("index.jsp");
				return;
			} else {
				System.out.println("로그인에 실패했습니다...");
				response.sendRedirect("sign.go");
				return;
			}
		}

		for (String key : map.keySet())
			request.setAttribute(key, map.get(key));

		RequestDispatcher view = request.getRequestDispatcher(page);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
