/**
 * 
 */
package controlador;

/**
 * @author Ivan.Corcoles
 *
 */
public class BeanIngrediente {

	private int id;
	private String nombre;
	private String descripcion;
	private int calorias;
	private String categoria;
	private String subCategoria;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getCalorias() {
		return calorias;
	}
	public void setCalorias(int calorias) {
		this.calorias = calorias;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getSubCategoria() {
		return subCategoria;
	}
	public void setSubCategoria(String subCategoria) {
		this.subCategoria = subCategoria;
	}
	
	public BeanIngrediente(int id, String nombre, String descripcion, int calorias, String categoria, String subCategoria){
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.calorias = calorias;
		this.categoria = categoria;
		this.subCategoria = subCategoria;
	}
	
}
