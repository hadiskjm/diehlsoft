package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanUsuario implements Serializable{
	
	int    intusuId;
    String strusuUser;
    String strusuPassword;
    String strusuConfirPassword;
    Date   dteusuFechaInicio;
    Date   dteusuFechaFinal;
    String strusuEstado;
    String strusuUserDesc;
    
    String strusuIdioma;
    String strperCorreo;
    
	public int getIntusuId() {
		return intusuId;
	}
	public void setIntusuId(int intusuId) {
		this.intusuId = intusuId;
	}
	public String getStrusuConfirPassword() {
		return strusuConfirPassword;
	}
	public void setStrusuConfirPassword(String strusuConfirPassword) {
		this.strusuConfirPassword = strusuConfirPassword;
	}
	public Date getDteusuFechaInicio() {
		return dteusuFechaInicio;
	}
	public void setDteusuFechaInicio(Date dteusuFechaInicio) {
		this.dteusuFechaInicio = dteusuFechaInicio;
	}
	public Date getDteusuFechaFinal() {
		return dteusuFechaFinal;
	}
	public void setDteusuFechaFinal(Date dteusuFechaFinal) {
		this.dteusuFechaFinal = dteusuFechaFinal;
	}
	public String getStrusuEstado() {
		return strusuEstado;
	}
	public void setStrusuEstado(String strusuEstado) {
		this.strusuEstado = strusuEstado;
	}
	public String getStrusuUser() {
		return strusuUser;
	}
	public void setStrusuUser(String strusuUser) {
		this.strusuUser = strusuUser;
	}
	public String getStrusuPassword() {
		return strusuPassword;
	}
	public void setStrusuPassword(String strusuPassword) {
		this.strusuPassword = strusuPassword;
	}
	public String getStrusuIdioma() {
		return strusuIdioma;
	}
	public void setStrusuIdioma(String strusuIdioma) {
		this.strusuIdioma = strusuIdioma;
	}
	public String getStrusuUserDesc() {
		return strusuUserDesc;
	}
	public void setStrusuUserDesc(String strusuUserDesc) {
		this.strusuUserDesc = strusuUserDesc;
	}
	public String getStrperCorreo() {
		return strperCorreo;
	}
	public void setStrperCorreo(String strperCorreo) {
		this.strperCorreo = strperCorreo;
	}
    
}
