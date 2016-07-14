package servlet;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.reflect.ReflectionFactory.GetReflectionFactoryAction;

import com.sun.xml.internal.bind.CycleRecoverable.Context;

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
            out.println("<div data-role='page' id='pageone'>");
        		out.println("<div data-role='header'>");
    				out.println("<h1>Ingredientes</h1>");
				out.println("</div>");
				out.println("<div data-role='main' class='i-content'");
					out.println("<form>");
						out.println("<input id='filterTable-input' data-type='search' placeholder='Buscar un ingrediente...'>");
            		out.println("</form>");
            		out.println("<form action='/Comidas/Inicio' method='POST'>");
    					out.println("<table data-role='table' data-mode='columntoggle' class='ui-responsive ui-shadow' id='myTable' data-filter='true' data-input='#filterTable-input'>");
				            String linea = "";
				    		try {
				    			BufferedReader bf = new BufferedReader(new FileReader(ARCHIVO_INGREDIENTES));
				    			try {
				    				out.println("<thead>");
			    						out.println("<tr>");
		    								out.println("<th data-priority='6'>Selección</th>");
    										out.println("<th>Nombre</th>");
											out.println("<th data-priority='1'>Descripción</th>");
											out.println("<th data-priority='2'>Calorias</th>");
											out.println("<th data-priority='3'>Categoría</th>");
											out.println("<th data-priority='4'>SubCategoría</th>");
										out.println("</tr>");
									out.println("</thead><tbody>");
				    				while ((linea = bf.readLine())!=null) {
				    					out.println("<tr>");
				    						out.println("<td><input type='checkbox' name='ingrediente' value='"+linea.split(";")[0]+"'/></td>");
				    						out.println("<td>"+((linea.split(";")[1].equals("0"))?"-":linea.split(";")[1])+"</td>");
				    						out.println("<td>"+((linea.split(";")[2].equals("0"))?"-":linea.split(";")[2])+"</td>");
				    						out.println("<td>"+((linea.split(";")[3].equals("0"))?"-":linea.split(";")[3])+"</td>");
				    						out.println("<td>"+((linea.split(";")[4].equals("0"))?"-":linea.split(";")[4])+"</td>");
				    						out.println("<td>"+((linea.split(";")[5].equals("0"))?"-":linea.split(";")[5])+"</td>");
				    					out.println("</tr>");
				    				}
				    				out.println("</tbody></table>");
				    				out.println("<input type='text' name='comida1' id='comida1' autofocus='true' />");
				            		out.println("<input type='submit' value='Buscar'>");
				    			} catch (NumberFormatException e) {
				    				e.printStackTrace();
				    			} catch (IOException e) {
				    				e.printStackTrace();
				    			}
				    		} catch (FileNotFoundException e) {
				    			System.out.println("Error cargando el archivo txt: " + e.toString());
				    		}
        		out.println("<div data-role='footer'>");
                out.println("<h1>Footer Text</h1>");
                  out.println("</div>");
                out.println("</div>");
                out.println("</form>");
                out.println("</div>");
                out.println("</div>");
            if(request.getParameter("comida1") != null)
            	out.println("<p>"+request.getParameter("comida1")+"</p>");
            out.println("</body>");
            out.println("</html>");
        } finally { 
            out.close();
        }
	}

}
