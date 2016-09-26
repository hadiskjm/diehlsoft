package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanTrabajaNosotros implements Serializable{
	
	int inttcnId;
	String strtcnNombres;
    String strtcnApellidos;
    int inttcnEdad;
    String strtcnDireccion;
    String strtcnCorreo;
    byte[] lbltcnCurriculum;
    Date dtetcnFechaIngreso;
    
    //Variables extends
    String strtcnExtencion;
    
    
	public int getInttcnId() {
		return inttcnId;
	}
	public void setInttcnId(int inttcnId) {
		this.inttcnId = inttcnId;
	}
	public String getStrtcnNombres() {
		return strtcnNombres;
	}
	public void setStrtcnNombres(String strtcnNombres) {
		this.strtcnNombres = strtcnNombres;
	}
	public String getStrtcnApellidos() {
		return strtcnApellidos;
	}
	public void setStrtcnApellidos(String strtcnApellidos) {
		this.strtcnApellidos = strtcnApellidos;
	}
	public int getInttcnEdad() {
		return inttcnEdad;
	}
	public void setInttcnEdad(int inttcnEdad) {
		this.inttcnEdad = inttcnEdad;
	}
	public String getStrtcnDireccion() {
		return strtcnDireccion;
	}
	public void setStrtcnDireccion(String strtcnDireccion) {
		this.strtcnDireccion = strtcnDireccion;
	}
	public String getStrtcnCorreo() {
		return strtcnCorreo;
	}
	public void setStrtcnCorreo(String strtcnCorreo) {
		this.strtcnCorreo = strtcnCorreo;
	}
	public byte[] getLbltcnCurriculum() {
		return lbltcnCurriculum;
	}
	public void setLbltcnCurriculum(byte[] lbltcnCurriculum) {
		this.lbltcnCurriculum = lbltcnCurriculum;
	}
	public Date getDtetcnFechaIngreso() {
		return dtetcnFechaIngreso;
	}
	public void setDtetcnFechaIngreso(Date dtetcnFechaIngreso) {
		this.dtetcnFechaIngreso = dtetcnFechaIngreso;
	}
	public String getStrtcnExtencion() {
		return strtcnExtencion;
	}
	public void setStrtcnExtencion(String strtcnExtencion) {
		this.strtcnExtencion = strtcnExtencion;
	}
    
    

}
