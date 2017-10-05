package br.com.projCardapio.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.projCardapio.db.CardapioDB;
import br.com.projCardapio.model.Cardapio;

/**
 * Servlet implementation class servDelete
 */
@WebServlet("/servAlterar")
public class servAlterar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servAlterar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		String id = request.getParameter("id");
		Cardapio c =  new Cardapio();
		c.setId(Integer.parseInt(id));
		
		if (new CardapioDB().update(c)){
			
			PrintWriter p = response.getWriter();
			p.println("<html>");
			p.println("<body>");
			p.println("<script> alert('Successfully updated')</script>");
			p.println("<script>setTimeout(\"window.location='Update.jsp'\", 50)</script>");
			p.println("</body>");
			p.println("</html>");
		}else{
			PrintWriter p = response.getWriter();
			p.println("<html>");
			p.println("<body>");
			p.println("<script> alert('Error')</script>");
			p.println("<script>setTimeout(\"window.location='Update.jsp.jsp'\", 50)</script>");
			p.println("</body>");
			p.println("</html>");
		}} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		String id = request.getParameter("id");
		Cardapio c =  new Cardapio();
		c.setId(Integer.parseInt(id));
		String date = request.getParameter("data");
		String Prato = request.getParameter("descPrato");
		String CarneA = request.getParameter("descCarneA");
		String CarneB = request.getParameter("descCarneB");
		String SaladaA = request.getParameter("descSaladaA");
		String SaladaB = request.getParameter("descSaladaB");
		String Suco = request.getParameter("descSuco");
		

		c.setData(ConvertData.getData(date));
		c.setDescPrato(Prato);
		c.setDescCarneA(CarneA);
		c.setDescCarneB(CarneB);
		c.setDescSaladaA(SaladaA);
		c.setDescSaladaB(SaladaB);
		c.setDescSuco(Suco);
		
		if (new CardapioDB().update(c)){
			
			PrintWriter p = response.getWriter();
			p.println("<html>");
			p.println("<body>");
			p.println("<script> alert('Successfully updated')</script>");
			p.println("<script>setTimeout(\"window.location='Update.jsp'\", 50)</script>");
			p.println("</body>");
			p.println("</html>");
		}else{
			PrintWriter p = response.getWriter();
			p.println("<html>");
			p.println("<body>");
			p.println("<script> alert('Erro')</script>");
			p.println("<script>setTimeout(\"window.location='Update.jsp.jsp'\", 50)</script>");
			p.println("</body>");
			p.println("</html>");
		}} catch (Exception e) {
			e.printStackTrace();
		}
	}

}