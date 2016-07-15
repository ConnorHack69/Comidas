package vista;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controlador.BeanIngrediente;
import modelo.Ingrediente;

public class ServletConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletConsulta() {
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		int usuario = Integer.parseInt(request.getParameter("usuario"));
		BeanIngrediente busuario = Ingrediente.consultarIngrediente(usuario);
		if (busuario != null) {
			request.setAttribute("busuario", busuario);
			request.getRequestDispatcher("mostrar.jsp").forward(request,
					response);
		} else {
			PrintWriter out = response.getWriter();
			out.println("Error, no se encontro el usuario.");
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}
}