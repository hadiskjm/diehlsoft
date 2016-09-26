package bean;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class BeanPersona implements Serializable{
	
	  int    intperId;
	  String strperNombre;
	  String strperApellidoPaterno;
	  String strperApellidoMaterno;
	  String strperSexo;
	  String strperCorreo;
	  String strperDireccion;
	  String strperTelefono;
	  String strperEstado;
	  Date   dteperFechaIngreso;
	  Date   dteperFechaUpdate;
	  String strperUserIngreso;
	  String strperUserUpdate;
	  int    intusuId;
	  String strperTheme;
	  String strperLocale;
	  int    intpefId;
	  int    intpisId;
	  
	  //campos extendidos
	  String strusuUser;
	  String strusuPassword;
	  String strusuConfirPassword;
	  
	  
	  
	public String getStrperTelefono() {
		return strperTelefono;
	}
	public void setStrperTelefono(String strperTelefono) {
		this.strperTelefono = strperTelefono;
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
	public String getStrusuConfirPassword() {
		return strusuConfirPassword;
	}
	public void setStrusuConfirPassword(String strusuConfirPassword) {
		this.strusuConfirPassword = strusuConfirPassword;
	}
	public int getIntpefId() {
		return intpefId;
	}
	public void setIntpefId(int intpefId) {
		this.intpefId = intpefId;
	}
	public int getIntperId() {
		return intperId;
	}
	public void setIntperId(int intperId) {
		this.intperId = intperId;
	}
	public String getStrperNombre() {
		return strperNombre;
	}
	public void setStrperNombre(String strperNombre) {
		this.strperNombre = strperNombre;
	}
	public String getStrperApellidoPaterno() {
		return strperApellidoPaterno;
	}
	public void setStrperApellidoPaterno(String strperApellidoPaterno) {
		this.strperApellidoPaterno = strperApellidoPaterno;
	}
	public String getStrperApellidoMaterno() {
		return strperApellidoMaterno;
	}
	public void setStrperApellidoMaterno(String strperApellidoMaterno) {
		this.strperApellidoMaterno = strperApellidoMaterno;
	}
	public String getStrperSexo() {
		return strperSexo;
	}
	public void setStrperSexo(String strperSexo) {
		this.strperSexo = strperSexo;
	}
	public String getStrperCorreo() {
		return strperCorreo;
	}
	public void setStrperCorreo(String strperCorreo) {
		this.strperCorreo = strperCorreo;
	}
	public String getStrperDireccion() {
		return strperDireccion;
	}
	public void setStrperDireccion(String strperDireccion) {
		this.strperDireccion = strperDireccion;
	}
	
	public String getStrperEstado() {
		return strperEstado;
	}
	public void setStrperEstado(String strperEstado) {
		this.strperEstado = strperEstado;
	}
	public Date getDteperFechaIngreso() {
		return dteperFechaIngreso;
	}
	public void setDteperFechaIngreso(Date dteperFechaIngreso) {
		this.dteperFechaIngreso = dteperFechaIngreso;
	}
	public Date getDteperFechaUpdate() {
		return dteperFechaUpdate;
	}
	public void setDteperFechaUpdate(Date dteperFechaUpdate) {
		this.dteperFechaUpdate = dteperFechaUpdate;
	}
	public String getStrperUserIngreso() {
		return strperUserIngreso;
	}
	public void setStrperUserIngreso(String strperUserIngreso) {
		this.strperUserIngreso = strperUserIngreso;
	}
	public String getStrperUserUpdate() {
		return strperUserUpdate;
	}
	public void setStrperUserUpdate(String strperUserUpdate) {
		this.strperUserUpdate = strperUserUpdate;
	}
	public int getIntusuId() {
		return intusuId;
	}
	public void setIntusuId(int intusuId) {
		this.intusuId = intusuId;
	}
	
	public int getIntpisId() {
		return intpisId;
	}
	public void setIntpisId(int intpisId) {
		this.intpisId = intpisId;
	}
	public String getStrperTheme() {
		return strperTheme;
	}
	public void setStrperTheme(String strperTheme) {
		this.strperTheme = strperTheme;
	}
	public String getStrperLocale() {
		return strperLocale;
	}
	public void setStrperLocale(String strperLocale) {
		this.strperLocale = strperLocale;
	}
    
}
