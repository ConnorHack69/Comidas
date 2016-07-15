<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Los import -->
<%@ page language="java"%>
<%@ page import="modelo.Ingrediente"%>
<%@ page import="controlador.BeanIngrediente"%>
<%@ page import="java.util.ArrayList"%>
<html>
<% 
out.println("<head>");
	out.println("<title>Servlet HelloServlet</title>");  
	out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
	out.println("<link rel='stylesheet' href='css/jquery.mobile-1.4.5.min.css'>");
	out.println("<script src='js/jquery-1.11.3.min.js'></script>");
	out.println("<script src='js/jquery.mobile-1.4.5.min.js'></script>");
	out.println("<style>th{border-bottom: 1px solid #d6d6d6;}tr:nth-child(even){background:#e9e9e9;}</style>");
out.println("</head>");
%>
<body>
	<%
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
							ArrayList<BeanIngrediente> lista = Ingrediente.dameIngredientes();
							for (int i=0;i<lista.size();i++){
								out.println("<tr>");
		    						out.println("<td><input type='checkbox' name='ingrediente' value='"+lista.get(i).getId()+"'/></td>");
		    						out.println("<td>"+lista.get(i).getNombre()+"</td>");
		    						out.println("<td>"+lista.get(i).getDescripcion()+"</td>");
		    						out.println("<td>"+lista.get(i).getCalorias()+"</td>");
		    						try{
		    							out.println("<td>"+Ingrediente.dameValorDeCampo("categoria","nombre",lista.get(i).getCategoria())+"</td>");
		    						} catch (Exception e){
		    							out.println("<td>-</td>");
		    						}
		    						try{
		    							out.println("<td>"+Ingrediente.dameValorDeCampo("subcategoria","nombre",lista.get(i).getSubCategoria())+"</td>");
		    						} catch (Exception e){
		    							out.println("<td>-</td>");
		    						}
		    					out.println("</tr>");
							}
		    				out.println("</tbody></table>");
		    				out.println("<input type='text' name='comida1' id='comida1' autofocus='true' />");
		            		out.println("<input type='submit' value='Buscar'>");
						out.println("<div data-role='footer'>");
							out.println("<h1>Footer Text</h1>");
						out.println("</div>");
					out.println("</div>");
				out.println("</form>");
			out.println("</div>");
		out.println("</div>");
		if(request.getParameter("comida1") != null)
			out.println("<p>"+request.getParameter("comida1")+"</p>");
        %>
    </body>
</html>