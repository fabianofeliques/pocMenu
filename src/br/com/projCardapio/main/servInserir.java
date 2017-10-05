package br.com.projCardapio.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.projCardapio.db.CardapioDB;
import br.com.projCardapio.model.Cardapio;

/**
 * Servlet implementation class servInserir
 */
@WebServlet("/servInserir")
public class servInserir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servInserir() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		String date = request.getParameter("data");
		String Prato = request.getParameter("descPrato");
		String CarneA = request.getParameter("descCarneA");
		String CarneB = request.getParameter("descCarneB");
		String SaladaA = request.getParameter("descSaladaA");
		String SaladaB = request.getParameter("descSaladaB");
		String Suco = request.getParameter("descSuco");
		
		

		Cardapio c =  new Cardapio();
		c.setData(ConvertData.getData(date));
		c.setDescPrato(Prato);
		c.setDescCarneA(CarneA);
		c.setDescCarneB(CarneB);
		c.setDescSaladaA(SaladaA);
		c.setDescSaladaB(SaladaB);
		c.setDescSuco(Suco);
		
		if (new CardapioDB().insert(c)){
			
			PrintWriter p = response.getWriter();
			p.println("<html>");
			p.println("<body>");
			p.println("<script> alert('Successfully inserted')</script>");
			p.println("<script>setTimeout(\"window.location='Insert.jsp'\", 50)</script>");
			p.println("</body>");
			p.println("</html>");
		}else{
			PrintWriter p = response.getWriter();
			p.println("<html>");
			p.println("<body>");
			p.println("<script> alert('Error')</script>");
			p.println("<script>setTimeout(\"window.location='Insert.jsp'\", 50)</script>");
			p.println("</body>");
			p.println("</html>");
		}} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

