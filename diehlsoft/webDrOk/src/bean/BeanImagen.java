package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanImagen implements Serializable{
	
	  int    intimgId;
	  String strimgNombre;
	  String strimgModulo;
	  Date   dteimgFechaIngreso;
	  Date   dteimgFechaUpdate;
	  String strimgUserIngreso;
	  String strimgUserUpdate;
	  String strimgEstado;
	  
	  int    intimgMensaje;
	
	  
	public int getIntimgMensaje() {
		return intimgMensaje;
	}
	public void setIntimgMensaje(int intimgMensaje) {
		this.intimgMensaje = intimgMensaje;
	}
	public int getIntimgId() {
		return intimgId;
	}
	public void setIntimgId(int intimgId) {
		this.intimgId = intimgId;
	}
	public String getStrimgNombre() {
		return strimgNombre;
	}
	public void setStrimgNombre(String strimgNombre) {
		this.strimgNombre = strimgNombre;
	}
	public String getStrimgModulo() {
		return strimgModulo;
	}
	public void setStrimgModulo(String strimgModulo) {
		this.strimgModulo = strimgModulo;
	}

	public Date getDteimgFechaIngreso() {
		return dteimgFechaIngreso;
	}
	public void setDteimgFechaIngreso(Date dteimgFechaIngreso) {
		this.dteimgFechaIngreso = dteimgFechaIngreso;
	}
	public Date getDteimgFechaUpdate() {
		return dteimgFechaUpdate;
	}
	public void setDteimgFechaUpdate(Date dteimgFechaUpdate) {
		this.dteimgFechaUpdate = dteimgFechaUpdate;
	}
	public String getStrimgUserIngreso() {
		return strimgUserIngreso;
	}
	public void setStrimgUserIngreso(String strimgUserIngreso) {
		this.strimgUserIngreso = strimgUserIngreso;
	}
	public String getStrimgUserUpdate() {
		return strimgUserUpdate;
	}
	public void setStrimgUserUpdate(String strimgUserUpdate) {
		this.strimgUserUpdate = strimgUserUpdate;
	}
	public String getStrimgEstado() {
		return strimgEstado;
	}
	public void setStrimgEstado(String strimgEstado) {
		this.strimgEstado = strimgEstado;
	}

}
