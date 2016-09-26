package bean;

import java.util.Date;

public class BeanContactenos {
	
	  int intconId;
	  String strconNombresCompletos;
	  String strconCorreo;
	  String strconComentario;
	  Date dteconFechaIngreso;
	  
	public int getIntconId() {
		return intconId;
	}
	public void setIntconId(int intconId) {
		this.intconId = intconId;
	}
	public String getStrconNombresCompletos() {
		return strconNombresCompletos;
	}
	public void setStrconNombresCompletos(String strconNombresCompletos) {
		this.strconNombresCompletos = strconNombresCompletos;
	}
	public String getStrconCorreo() {
		return strconCorreo;
	}
	public void setStrconCorreo(String strconCorreo) {
		this.strconCorreo = strconCorreo;
	}
	public String getStrconComentario() {
		return strconComentario;
	}
	public void setStrconComentario(String strconComentario) {
		this.strconComentario = strconComentario;
	}
	public Date getDteconFechaIngreso() {
		return dteconFechaIngreso;
	}
	public void setDteconFechaIngreso(Date dteconFechaIngreso) {
		this.dteconFechaIngreso = dteconFechaIngreso;
	}

}
