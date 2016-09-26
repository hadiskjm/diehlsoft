package bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class BeanEstado implements Serializable{
	
	  int intestId;
	  String strestNombre;
	  String strestLocale;
	  String strestParaModulo;
	  
	public int getIntestId() {
		return intestId;
	}
	public void setIntestId(int intestId) {
		this.intestId = intestId;
	}
	public String getStrestNombre() {
		return strestNombre;
	}
	public void setStrestNombre(String strestNombre) {
		this.strestNombre = strestNombre;
	}
	public String getStrestLocale() {
		return strestLocale;
	}
	public void setStrestLocale(String strestLocale) {
		this.strestLocale = strestLocale;
	}
	public String getStrestParaModulo() {
		return strestParaModulo;
	}
	public void setStrestParaModulo(String strestParaModulo) {
		this.strestParaModulo = strestParaModulo;
	}
    
}
