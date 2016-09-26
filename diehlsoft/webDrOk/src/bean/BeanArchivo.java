package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanArchivo implements Serializable{
	
	  int intarcId;
	  String strarcNombre;
	  String strarcArchivo;
	  Date dtearcFechaIngreso;
	  Date dtearcFechaUpdate;
	  String strarcUserIngreso;
	  String strarcUserUpdate;
	  String strarcLocale;
	  
	public int getIntarcId() {
		return intarcId;
	}
	public void setIntarcId(int intarcId) {
		this.intarcId = intarcId;
	}
	public String getStrarcNombre() {
		return strarcNombre;
	}
	public void setStrarcNombre(String strarcNombre) {
		this.strarcNombre = strarcNombre;
	}
	public String getStrarcArchivo() {
		return strarcArchivo;
	}
	public void setStrarcArchivo(String strarcArchivo) {
		this.strarcArchivo = strarcArchivo;
	}
	public Date getDtearcFechaIngreso() {
		return dtearcFechaIngreso;
	}
	public void setDtearcFechaIngreso(Date dtearcFechaIngreso) {
		this.dtearcFechaIngreso = dtearcFechaIngreso;
	}
	public Date getDtearcFechaUpdate() {
		return dtearcFechaUpdate;
	}
	public void setDtearcFechaUpdate(Date dtearcFechaUpdate) {
		this.dtearcFechaUpdate = dtearcFechaUpdate;
	}
	public String getStrarcUserIngreso() {
		return strarcUserIngreso;
	}
	public void setStrarcUserIngreso(String strarcUserIngreso) {
		this.strarcUserIngreso = strarcUserIngreso;
	}
	public String getStrarcUserUpdate() {
		return strarcUserUpdate;
	}
	public void setStrarcUserUpdate(String strarcUserUpdate) {
		this.strarcUserUpdate = strarcUserUpdate;
	}
	public String getStrarcLocale() {
		return strarcLocale;
	}
	public void setStrarcLocale(String strarcLocale) {
		this.strarcLocale = strarcLocale;
	}
	  
	  

}
