package com.encore.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

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

		try {
//			ChromeDriverUtil.naver(request, response);
//			ChromeDriverUtil.naverDetail(request, response);
//			
//			String[] dlist = ChromeDriverUtil.daum();
//			request.setAttribute("dlist", dlist);
//			System.out.println(Arrays.toString(dlist));
//			RequestDispatcher view = request.getRequestDispatcher("result.jsp");
//			view.forward(request, response);
			ChromeDriverUtil.daumWithJsoup(request.getParameter("start").split(","), request.getParameter("arrive").split(","));
//			ChromeDriverUtil.daumWithJsoup();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
