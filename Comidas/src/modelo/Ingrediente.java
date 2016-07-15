package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import controlador.BeanIngrediente;

public class Ingrediente {

	public static BeanIngrediente consultarIngrediente(int idIngrediente) {
		BeanIngrediente bIngrediente = null;
		try {
			Conexion c = new Conexion();
			Connection con = c.getConexion();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ingrediente where id = " + idIngrediente);
			while (rs.next()) {
				bIngrediente = new BeanIngrediente(idIngrediente, rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),rs.getInt(6));
			}
			rs.close();
			st.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return bIngrediente;
	}
	
	public static ArrayList<BeanIngrediente> dameIngredientes() {
		ArrayList<BeanIngrediente> arrayIngrediente = new ArrayList<BeanIngrediente>();
		try {
			Conexion c = new Conexion();
			Connection con = c.getConexion();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ingrediente");
			while (rs.next()) {
				arrayIngrediente.add(new BeanIngrediente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),rs.getInt(6)));
			}
			rs.close();
			st.close();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return arrayIngrediente;
	}
	
}