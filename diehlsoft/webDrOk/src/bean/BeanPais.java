package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanPais implements Serializable{

	  int    intpisId;
	  String strpisDescripcion;
	  String strpisContinente;
	  Date   dtepisFechaIngreso;
	  Date   dtepisFechaUpdate;
	  String strpisUserIngreso;
	  String strpisUserUpdate;
	  String strpisLocale;
	  String strpisDescLocale;
	  
	public int getIntpisId() {
		return intpisId;
	}
	public void setIntpisId(int intpisId) {
		this.intpisId = intpisId;
	}
	public String getStrpisDescripcion() {
		return strpisDescripcion;
	}
	public void setStrpisDescripcion(String strpisDescripcion) {
		this.strpisDescripcion = strpisDescripcion;
	}
	public String getStrpisContinente() {
		return strpisContinente;
	}
	public void setStrpisContinente(String strpisContinente) {
		this.strpisContinente = strpisContinente;
	}
	public Date getDtepisFechaIngreso() {
		return dtepisFechaIngreso;
	}
	public void setDtepisFechaIngreso(Date dtepisFechaIngreso) {
		this.dtepisFechaIngreso = dtepisFechaIngreso;
	}
	public Date getDtepisFechaUpdate() {
		return dtepisFechaUpdate;
	}
	public void setDtepisFechaUpdate(Date dtepisFechaUpdate) {
		this.dtepisFechaUpdate = dtepisFechaUpdate;
	}
	public String getStrpisUserIngreso() {
		return strpisUserIngreso;
	}
	public void setStrpisUserIngreso(String strpisUserIngreso) {
		this.strpisUserIngreso = strpisUserIngreso;
	}
	public String getStrpisUserUpdate() {
		return strpisUserUpdate;
	}
	public void setStrpisUserUpdate(String strpisUserUpdate) {
		this.strpisUserUpdate = strpisUserUpdate;
	}
	public String getStrpisLocale() {
		return strpisLocale;
	}
	public void setStrpisLocale(String strpisLocale) {
		this.strpisLocale = strpisLocale;
	}
	public String getStrpisDescLocale() {
		return strpisDescLocale;
	}
	public void setStrpisDescLocale(String strpisDescLocale) {
		this.strpisDescLocale = strpisDescLocale;
	}

}
