package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanPreguntas implements Serializable{
	
	int intpgaId;
	String strpgaDescripcion;
	String strpgaLevel;
	Date dtepgaFechaIngreso;
	Date dtepgaFechaUpdate;
	String strpgaUserIngreso;
	String strpgaUserUpdate;
	String strpgaLocale;
	String strpgaImg;

	
	
	public int getIntpgaId() {
		return intpgaId;
	}
	public void setIntpgaId(int intpgaId) {
		this.intpgaId = intpgaId;
	}
	public String getStrpgaDescripcion() {
		return strpgaDescripcion;
	}
	public void setStrpgaDescripcion(String strpgaDescripcion) {
		this.strpgaDescripcion = strpgaDescripcion;
	}
	public String getStrpgaLevel() {
		return strpgaLevel;
	}
	public void setStrpgaLevel(String strpgaLevel) {
		this.strpgaLevel = strpgaLevel;
	}
	public Date getDtepgaFechaIngreso() {
		return dtepgaFechaIngreso;
	}
	public void setDtepgaFechaIngreso(Date dtepgaFechaIngreso) {
		this.dtepgaFechaIngreso = dtepgaFechaIngreso;
	}
	public Date getDtepgaFechaUpdate() {
		return dtepgaFechaUpdate;
	}
	public void setDtepgaFechaUpdate(Date dtepgaFechaUpdate) {
		this.dtepgaFechaUpdate = dtepgaFechaUpdate;
	}
	public String getStrpgaUserIngreso() {
		return strpgaUserIngreso;
	}
	public void setStrpgaUserIngreso(String strpgaUserIngreso) {
		this.strpgaUserIngreso = strpgaUserIngreso;
	}
	public String getStrpgaUserUpdate() {
		return strpgaUserUpdate;
	}
	public void setStrpgaUserUpdate(String strpgaUserUpdate) {
		this.strpgaUserUpdate = strpgaUserUpdate;
	}
	public String getStrpgaLocale() {
		return strpgaLocale;
	}
	public void setStrpgaLocale(String strpgaLocale) {
		this.strpgaLocale = strpgaLocale;
	}
	public String getStrpgaImg() {
		return strpgaImg;
	}
	public void setStrpgaImg(String strpgaImg) {
		this.strpgaImg = strpgaImg;
	}
	
	

}
