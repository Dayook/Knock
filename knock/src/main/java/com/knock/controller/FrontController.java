package com.knock.controller;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import com.knock.model.command.Command;
import com.knock.model.command.campaign.CampaignListCommand;
import com.knock.model.command.campaign.CampaignOneCommand;

// �Ⱦ�
/* @WebServlet("/controller") */
public class FrontController extends HttpServlet{
	/*
	 * private static final long serialVersionUID =1L; HttpSession session;
	 * 
	 * @Override protected void doGet(HttpServletRequest request,
	 * HttpServletResponse response) throws ServletException, IOException {
	 * System.out.println(">> FrontController.doGet() ½ÇÇà");
	 * doHandle(request,response); }
	 * 
	 * protected void doPost(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException {
	 * System.out.println(">> FrontController.doPost() ?½ÇÇà"); // doGet(request,
	 * response); doHandle(request, response); }
	 * 
	 * private void doHandle(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException {
	 * request.setCharacterEncoding("UTF-8");
	 * response.setContentType("text/html; charset=utf-8");
	 * 
	 * String type = request.getParameter("type"); System.out.println("> type: " +
	 * type); Command command = null;
	 * 
	 * // ��Ʈ�ѷ� �и��س����Ÿ� �� �� // if ("cList".equals(type)) { // command = new
	 * CampaignListCommand(); // } else if ("cOne".equals(type)) { // command = new
	 * CampaignOneCommand(); // } else if ("cProposal".equals(type)) { // command =
	 * new CampaignProposalCommand(); // } String path = command.exec(request,
	 * response);
	 * 
	 * System.out.println(path); if(path.equals("")) { return; } else {
	 * request.getRequestDispatcher(path).forward(request, response); }
	 * 
	 * }
	 * 
	 */
	
}
