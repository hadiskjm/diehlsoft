package dao;

import bean.BeanUsuario;

public interface UsuarioDAO {
	
	public BeanUsuario usuAutenticar(String strusuUser,String strusuPassword) throws Exception;
	public BeanUsuario usuBuscarUserXId(int intusuId) throws Exception;
	public BeanUsuario usuInsert(BeanUsuario bean) throws Exception;
}
