package br.edu.mackenzie.controller.mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.mackenzie.controller.action.Action;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String logica = request.getParameter("action");
		String pacoteBase = "br.edu.mackenzie.controller.action.impl.";
		try {
			Action action = (Action) Class.forName(pacoteBase + logica)
					.newInstance();
			action.executar(request, response);
		} catch (ClassNotFoundException e) {
			System.out.println("Action n‹o existe!");
			e.printStackTrace();
		} catch (InstantiationException e) {
			System.out.println("Erro ao instanciar a Action");
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
