package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanCiudad implements Serializable{
	
	  int intciuId;
	  String strciuDescripcion;
	  Date dteciuFechaIngreso;
	  Date dteciuFechaUpdate;
	  String strciuUserIngreso;
	  String strciuUserUpdate;
	  int intpisId;
	  String strciuLocale;
	  
	public int getIntciuId() {
		return intciuId;
	}
	public void setIntciuId(int intciuId) {
		this.intciuId = intciuId;
	}
	public String getStrciuDescripcion() {
		return strciuDescripcion;
	}
	public void setStrciuDescripcion(String strciuDescripcion) {
		this.strciuDescripcion = strciuDescripcion;
	}
	public Date getDteciuFechaIngreso() {
		return dteciuFechaIngreso;
	}
	public void setDteciuFechaIngreso(Date dteciuFechaIngreso) {
		this.dteciuFechaIngreso = dteciuFechaIngreso;
	}
	public Date getDteciuFechaUpdate() {
		return dteciuFechaUpdate;
	}
	public void setDteciuFechaUpdate(Date dteciuFechaUpdate) {
		this.dteciuFechaUpdate = dteciuFechaUpdate;
	}
	public String getStrciuUserIngreso() {
		return strciuUserIngreso;
	}
	public void setStrciuUserIngreso(String strciuUserIngreso) {
		this.strciuUserIngreso = strciuUserIngreso;
	}
	public String getStrciuUserUpdate() {
		return strciuUserUpdate;
	}
	public void setStrciuUserUpdate(String strciuUserUpdate) {
		this.strciuUserUpdate = strciuUserUpdate;
	}
	public int getIntpisId() {
		return intpisId;
	}
	public void setIntpisId(int intpisId) {
		this.intpisId = intpisId;
	}
	public String getStrciuLocale() {
		return strciuLocale;
	}
	public void setStrciuLocale(String strciuLocale) {
		this.strciuLocale = strciuLocale;
	}
	   
}
