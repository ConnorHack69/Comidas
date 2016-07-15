<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Los import -->
<%@ page language="java"%>
<%@ page import="modelo.Ingrediente"%>
<%@ page import="controlador.BeanIngrediente"%>
<%@ page import="java.util.ArrayList"%>
<html>
<body>
	<h1>Ingredientes</h1>
	<table border="1">
		<tr>
			<td>id</td>
			<td>nombre</td>
		</tr>
		<%
			ArrayList<BeanIngrediente> lista = Ingrediente.dameIngredientes();
			for (int i=0;i<lista.size();i++){
				out.println("<tr>");
				out.println("<td>"+lista.get(i).getId()+"</td>");
				out.println("<td>"+lista.get(i).getNombre()+"</td>");
				out.println("</tr>");
			}
		%>
	</table>
</body>
</html>