package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanActualidadLaboral implements Serializable{
	
	  int    intaclId;
	  String straclTitulo;
	  String straclNombre;
	  String straclContenido;
	  String straclResumen;
	  Date   dteaclFechaIngreso;
	  Date   dteaclFechaUpdate;
	  String straclUserIngreso;
	  String straclUserUpdate;
	  String straclEstado;
	  String straclFile;
	  int    intbolId;
	  int    intusuId;
	  
	  String strbolNombre;
	  int    intaclMensaje;
	  
	public String getStraclTitulo() {
		return straclTitulo;
	}
	public void setStraclTitulo(String straclTitulo) {
		this.straclTitulo = straclTitulo;
	}
	public String getStrbolNombre() {
		return strbolNombre;
	}
	public void setStrbolNombre(String strbolNombre) {
		this.strbolNombre = strbolNombre;
	}
	public int getIntbolId() {
		return intbolId;
	}
	public void setIntbolId(int intbolId) {
		this.intbolId = intbolId;
	}
	public int getIntaclMensaje() {
		return intaclMensaje;
	}
	public void setIntaclMensaje(int intaclMensaje) {
		this.intaclMensaje = intaclMensaje;
	}
	public int getIntaclId() {
		return intaclId;
	}
	public void setIntaclId(int intaclId) {
		this.intaclId = intaclId;
	}
	public String getStraclNombre() {
		return straclNombre;
	}
	public void setStraclNombre(String straclNombre) {
		this.straclNombre = straclNombre;
	}
	public String getStraclContenido() {
		return straclContenido;
	}
	public void setStraclContenido(String straclContenido) {
		this.straclContenido = straclContenido;
	}
	public String getStraclResumen() {
		return straclResumen;
	}
	public void setStraclResumen(String straclResumen) {
		this.straclResumen = straclResumen;
	}
	public Date getDteaclFechaIngreso() {
		return dteaclFechaIngreso;
	}
	public void setDteaclFechaIngreso(Date dteaclFechaIngreso) {
		this.dteaclFechaIngreso = dteaclFechaIngreso;
	}
	public Date getDteaclFechaUpdate() {
		return dteaclFechaUpdate;
	}
	public void setDteaclFechaUpdate(Date dteaclFechaUpdate) {
		this.dteaclFechaUpdate = dteaclFechaUpdate;
	}
	public String getStraclUserIngreso() {
		return straclUserIngreso;
	}
	public void setStraclUserIngreso(String straclUserIngreso) {
		this.straclUserIngreso = straclUserIngreso;
	}
	public String getStraclUserUpdate() {
		return straclUserUpdate;
	}
	public void setStraclUserUpdate(String straclUserUpdate) {
		this.straclUserUpdate = straclUserUpdate;
	}
	public String getStraclEstado() {
		return straclEstado;
	}
	public void setStraclEstado(String straclEstado) {
		this.straclEstado = straclEstado;
	}
	public String getStraclFile() {
		return straclFile;
	}
	public void setStraclFile(String straclFile) {
		this.straclFile = straclFile;
	}
	public int getIntusuId() {
		return intusuId;
	}
	public void setIntusuId(int intusuId) {
		this.intusuId = intusuId;
	}
	  
	  

}
