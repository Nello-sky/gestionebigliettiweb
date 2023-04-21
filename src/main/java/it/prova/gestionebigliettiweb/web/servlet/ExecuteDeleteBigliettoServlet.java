package it.prova.gestionebigliettiweb.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.math.NumberUtils;

import it.prova.gestionebigliettiweb.service.BigliettoService;
import it.prova.gestionebigliettiweb.service.MyServiceFactory;

/**
 * Servlet implementation class ExecuteDeleteBigliettoServlet
 */
@WebServlet("/ExecuteDeleteBigliettoServlet")
public class ExecuteDeleteBigliettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExecuteDeleteBigliettoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String idBigliettoToDelete = request.getParameter("idDelete");

		if (!NumberUtils.isCreatable(idBigliettoToDelete)) {
			// qui ci andrebbe un messaggio nei file di log costruito ad hoc se fosse attivo
			request.setAttribute("errorMessage", "Attenzione si è verificato un errore.");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return;
		}

		try {
			BigliettoService articoloService = MyServiceFactory.getBigliettoServiceInstance();
			articoloService.rimuovi(Long.parseLong(idBigliettoToDelete));
			request.setAttribute("listaBigliettiAttribute", articoloService.listAll());
		} catch (Exception e) {
			// qui ci andrebbe un messaggio nei file di log costruito ad hoc se fosse attivo
			e.printStackTrace();
			request.setAttribute("errorMessage", "Attenzione si è verificato un errore.");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return;
		}
		// forward
		request.getRequestDispatcher("/biglietto/results.jsp").forward(request, response);
	}

}
