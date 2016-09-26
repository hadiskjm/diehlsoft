package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanBoletin implements Serializable{
	
	  int    intbolId;
	  String strbolNombre;
	  Date   dtebolFechaIngreso;
	  Date   dtebolFechaUpdate;
	  String strbolUserIngreso;
	  String strbolUserUpdate;
	  String strbolEstado;
	  String strbolFile;
	  int    intusuId;
	 
	  int    intbolMensaje;

	public int getIntbolId() {
		return intbolId;
	}

	public void setIntbolId(int intbolId) {
		this.intbolId = intbolId;
	}

	public String getStrbolNombre() {
		return strbolNombre;
	}

	public void setStrbolNombre(String strbolNombre) {
		this.strbolNombre = strbolNombre;
	}

	public Date getDtebolFechaIngreso() {
		return dtebolFechaIngreso;
	}

	public void setDtebolFechaIngreso(Date dtebolFechaIngreso) {
		this.dtebolFechaIngreso = dtebolFechaIngreso;
	}

	public Date getDtebolFechaUpdate() {
		return dtebolFechaUpdate;
	}

	public void setDtebolFechaUpdate(Date dtebolFechaUpdate) {
		this.dtebolFechaUpdate = dtebolFechaUpdate;
	}

	public String getStrbolUserIngreso() {
		return strbolUserIngreso;
	}

	public void setStrbolUserIngreso(String strbolUserIngreso) {
		this.strbolUserIngreso = strbolUserIngreso;
	}

	public String getStrbolUserUpdate() {
		return strbolUserUpdate;
	}

	public void setStrbolUserUpdate(String strbolUserUpdate) {
		this.strbolUserUpdate = strbolUserUpdate;
	}

	public String getStrbolEstado() {
		return strbolEstado;
	}

	public void setStrbolEstado(String strbolEstado) {
		this.strbolEstado = strbolEstado;
	}

	public String getStrbolFile() {
		return strbolFile;
	}

	public void setStrbolFile(String strbolFile) {
		this.strbolFile = strbolFile;
	}

	public int getIntusuId() {
		return intusuId;
	}

	public void setIntusuId(int intusuId) {
		this.intusuId = intusuId;
	}

	public int getIntbolMensaje() {
		return intbolMensaje;
	}

	public void setIntbolMensaje(int intbolMensaje) {
		this.intbolMensaje = intbolMensaje;
	}
	  
	  

}
