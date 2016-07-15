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
	private int categoria;
	private int subCategoria;
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
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}
	public int getSubCategoria() {
		return subCategoria;
	}
	public void setSubCategoria(int subCategoria) {
		this.subCategoria = subCategoria;
	}
	
	public BeanIngrediente(int id, String nombre, String descripcion, int calorias, int categoria, int subCategoria){
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.calorias = calorias;
		this.categoria = categoria;
		this.subCategoria = subCategoria;
	}
	
}
