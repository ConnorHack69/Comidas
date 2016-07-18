package servlet;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Ingrediente;

@WebServlet("/Inicio")
public class Inicio extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Inicio() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ARCHIVO_INGREDIENTES = getServletContext().getRealPath("/") + "ingredientes/datos.txt";
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
	            out.println("<title>Servlet HelloServlet</title>");  
	            out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
	            out.println("<link rel='stylesheet' href='css/jquery.mobile-1.4.5.min.css'>");
	            out.println("<script src='js/jquery-1.11.3.min.js'></script>");
	            out.println("<script src='js/jquery.mobile-1.4.5.min.js'></script>");
	            out.println("<style>th{border-bottom: 1px solid #d6d6d6;}tr:nth-child(even){background:#e9e9e9;}</style>");
            out.println("</head>");
            out.println("<body>");
            String linea = "";
    		try {
    			BufferedReader bf = new BufferedReader(new FileReader(ARCHIVO_INGREDIENTES));
    			try {
    				while ((linea = bf.readLine())!=null) {
    					Ingrediente.aniadirNuevo(linea.split(";")[0], Integer.parseInt(linea.split(";")[1]));
    				}
    				out.println("<h1>Todo OK</h1>");
    			} catch (NumberFormatException e) {
    				out.println("<h1>Fallo NumberFormatException</h1>");
    				e.printStackTrace();
    			} catch (IOException e) {
    				out.println("<h1>Fallo IOException</h1>");
    				e.printStackTrace();
    			}
    		} catch (FileNotFoundException e) {
    			out.println("<h1>Error cargando el archivo txt: " + e.toString() + "</h1>");
    		}
            out.println("</body>");
            out.println("</html>");
        } finally { 
            out.close();
        }
	}

}