package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanPerfil implements Serializable{
	
	  int intpefId;
	  String strpefDescripcion;
	  Date dtepefFechaIngreso;
	  Date dtepefFechaUpdate;
	  String strpefUserIngreso;
	  String strpefUserUpdate;
	  String strpefEstado;
	  String strpefLocale;
	  
	  int intpefMensaje;
	  
	public int getIntpefMensaje() {
		return intpefMensaje;
	}
	public void setIntpefMensaje(int intpefMensaje) {
		this.intpefMensaje = intpefMensaje;
	}
	public int getIntpefId() {
		return intpefId;
	}
	public void setIntpefId(int intpefId) {
		this.intpefId = intpefId;
	}
	public String getStrpefDescripcion() {
		return strpefDescripcion;
	}
	public void setStrpefDescripcion(String strpefDescripcion) {
		this.strpefDescripcion = strpefDescripcion;
	}
	public Date getDtepefFechaIngreso() {
		return dtepefFechaIngreso;
	}
	public void setDtepefFechaIngreso(Date dtepefFechaIngreso) {
		this.dtepefFechaIngreso = dtepefFechaIngreso;
	}
	public Date getDtepefFechaUpdate() {
		return dtepefFechaUpdate;
	}
	public void setDtepefFechaUpdate(Date dtepefFechaUpdate) {
		this.dtepefFechaUpdate = dtepefFechaUpdate;
	}
	public String getStrpefUserIngreso() {
		return strpefUserIngreso;
	}
	public void setStrpefUserIngreso(String strpefUserIngreso) {
		this.strpefUserIngreso = strpefUserIngreso;
	}
	public String getStrpefUserUpdate() {
		return strpefUserUpdate;
	}
	public void setStrpefUserUpdate(String strpefUserUpdate) {
		this.strpefUserUpdate = strpefUserUpdate;
	}
	public String getStrpefEstado() {
		return strpefEstado;
	}
	public void setStrpefEstado(String strpefEstado) {
		this.strpefEstado = strpefEstado;
	}
	public String getStrpefLocale() {
		return strpefLocale;
	}
	public void setStrpefLocale(String strpefLocale) {
		this.strpefLocale = strpefLocale;
	}
	  
	  
}
