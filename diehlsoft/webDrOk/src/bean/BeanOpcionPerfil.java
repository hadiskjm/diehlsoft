package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanOpcionPerfil implements Serializable{
	
	  int    intoppId;
	  String stroppDescripcion;
	  Date   dteoppFechaIngreso;
	  Date   dteoppFechaUpdate;
	  String stroppUserIngreso;
	  String stroppUserUpdate;
	  String stroppEstado;
	  int    intpefId;
	  String stroppLocale;
	  
	  int intoppMensaje;
	  
	public int getIntoppMensaje() {
		return intoppMensaje;
	}
	public void setIntoppMensaje(int intoppMensaje) {
		this.intoppMensaje = intoppMensaje;
	}
	public int getIntoppId() {
		return intoppId;
	}
	public void setIntoppId(int intoppId) {
		this.intoppId = intoppId;
	}
	public String getStroppDescripcion() {
		return stroppDescripcion;
	}
	public void setStroppDescripcion(String stroppDescripcion) {
		this.stroppDescripcion = stroppDescripcion;
	}
	public Date getDteoppFechaIngreso() {
		return dteoppFechaIngreso;
	}
	public void setDteoppFechaIngreso(Date dteoppFechaIngreso) {
		this.dteoppFechaIngreso = dteoppFechaIngreso;
	}
	public Date getDteoppFechaUpdate() {
		return dteoppFechaUpdate;
	}
	public void setDteoppFechaUpdate(Date dteoppFechaUpdate) {
		this.dteoppFechaUpdate = dteoppFechaUpdate;
	}
	public String getStroppUserIngreso() {
		return stroppUserIngreso;
	}
	public void setStroppUserIngreso(String stroppUserIngreso) {
		this.stroppUserIngreso = stroppUserIngreso;
	}
	public String getStroppUserUpdate() {
		return stroppUserUpdate;
	}
	public void setStroppUserUpdate(String stroppUserUpdate) {
		this.stroppUserUpdate = stroppUserUpdate;
	}
	public String getStroppEstado() {
		return stroppEstado;
	}
	public void setStroppEstado(String stroppEstado) {
		this.stroppEstado = stroppEstado;
	}
	public int getIntpefId() {
		return intpefId;
	}
	public void setIntpefId(int intpefId) {
		this.intpefId = intpefId;
	}
	public String getStroppLocale() {
		return stroppLocale;
	}
	public void setStroppLocale(String stroppLocale) {
		this.stroppLocale = stroppLocale;
	}

}
