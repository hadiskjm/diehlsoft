package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanAlternativa implements Serializable{
	
	int intaltId;
	String straltDescripcion;
	String straltCorrecto;
	Date dtealtFechaIngreso;
	Date dtealtFechaUpdate;
	String straltUserIngreso;
	String straltUserUpdate; 
	String straltLocale;
	int intpgaId;
	
	public int getIntaltId() {
		return intaltId;
	}
	public void setIntaltId(int intaltId) {
		this.intaltId = intaltId;
	}
	public String getStraltDescripcion() {
		return straltDescripcion;
	}
	public void setStraltDescripcion(String straltDescripcion) {
		this.straltDescripcion = straltDescripcion;
	}
	public String getStraltCorrecto() {
		return straltCorrecto;
	}
	public void setStraltCorrecto(String straltCorrecto) {
		this.straltCorrecto = straltCorrecto;
	}
	public Date getDtealtFechaIngreso() {
		return dtealtFechaIngreso;
	}
	public void setDtealtFechaIngreso(Date dtealtFechaIngreso) {
		this.dtealtFechaIngreso = dtealtFechaIngreso;
	}
	public Date getDtealtFechaUpdate() {
		return dtealtFechaUpdate;
	}
	public void setDtealtFechaUpdate(Date dtealtFechaUpdate) {
		this.dtealtFechaUpdate = dtealtFechaUpdate;
	}
	public String getStraltUserIngreso() {
		return straltUserIngreso;
	}
	public void setStraltUserIngreso(String straltUserIngreso) {
		this.straltUserIngreso = straltUserIngreso;
	}
	public String getStraltUserUpdate() {
		return straltUserUpdate;
	}
	public void setStraltUserUpdate(String straltUserUpdate) {
		this.straltUserUpdate = straltUserUpdate;
	}
	public String getStraltLocale() {
		return straltLocale;
	}
	public void setStraltLocale(String straltLocale) {
		this.straltLocale = straltLocale;
	}
	public int getIntpgaId() {
		return intpgaId;
	}
	public void setIntpgaId(int intpgaId) {
		this.intpgaId = intpgaId;
	} 
	
	

}
