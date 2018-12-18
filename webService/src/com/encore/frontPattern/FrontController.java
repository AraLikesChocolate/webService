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

import com.encore.model.UserVO;
import com.encore.util.DateUtil;

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
		// String userPath = request.getContextPath()+ "/../user/";
		response.setCharacterEncoding("utf-8");

		String signFolderName = "";
		HttpSession sess = request.getSession();
		// if (!(requestURI.equals(signFolderName + "/sign")) &&
		// sess.getAttribute("user") == null) {
		// System.out.println(request.getContextPath() + signFolderName + "/sign.go");
		// response.sendRedirect(request.getContextPath() + signFolderName +
		// "/sign.go");
		// return;
		// } else
		if (requestURI.equals(signFolderName + "/signOut")) {
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
		case "/sign":
			controller = new LoginController();
			if (method.equals("get")) {

			} else {
				map.put("id", request.getParameter("id"));
				map.put("password", request.getParameter("password"));
			}
			break;

		// 2.Login
		case "/mypage":
			// controller = new LoginController();
			if (method.equals("get")) {
				page = signFolderName + "index.jsp";
			} else {
				map.put("id", request.getParameter("id"));
				map.put("password", request.getParameter("password"));
			}
			break;

		// 3.userInsert -- 회원가입
		case "/signUp":
			controller = new UserInsertController();
			if (method.equals("get")) {
				System.out.println("get 도착...");
				page = signFolderName + "signUp.jsp";
			} else {
				System.out.println("post 도착...");
				map.put("user", new UserVO(request.getParameter("id"), request.getParameter("password"),
						request.getParameter("name"), request.getParameter("email"), request.getParameter("gender"),
						DateUtil.stringToDate(request.getParameter("birthday")), request.getParameter("userinfo")));
				System.out.println(map.get("user"));
				page = signFolderName + "userResult.jsp";
			}
			break;

		// 4.userUpdate -- 회원정보수정
		case "/userUpdate":
			controller = new UserUpdateController();
			map.put("id", (String) request.getParameter("id"));
			map.put("password", (String) request.getParameter("password"));
			map.put("name", (String) request.getParameter("name"));
			map.put("email", (String) request.getParameter("email"));
			map.put("gender", (String) request.getParameter("gender"));
			map.put("birthday", (String) request.getParameter("birthday"));
			map.put("userinfo", (String) request.getParameter("userinfo"));
			page = method.equals("get") ? "userDetail.jsp" : signFolderName + "userResult.jsp";
			break;

		// 5. id 중복체크
		case "/IdCheckForm":
			controller = new IdCheckController();
			if (method.equals("get")) {
				map.put("id", (String) request.getParameter("id"));

				// page=signFolderName+"userIdCheck.jsp";

			}
			break;

		default:
			break;
		}
		controller.execute(map);
		
		if (requestURI.equals("/IdCheckForm")) {
			System.out.println(map.get("message"));
			response.getWriter().println(map.get("message"));
			return;
		}
		
		
		// 로그인 인증되면 index.jsp로 이동, 인증되지 않으면 sign.jsp로 이동 --> redirect 해야함
		Object result = map.get("loginResult");
		if (result != null) {
			if (((String) result).equals("yes")) {
				sess.setAttribute("user", map.get("user"));
				response.sendRedirect(signFolderName + "index.jsp");
				return;
			} else {
				System.out.println("로그인에 실패했습니다...");
				response.sendRedirect(signFolderName + "sign.go");
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
