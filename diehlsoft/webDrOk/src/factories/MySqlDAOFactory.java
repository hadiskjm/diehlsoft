package factories;

import dao.ActualidadLaboralDAO;
import dao.BoletinDAO;
import dao.ContactenosDAO;
import dao.EmailDAO;
import dao.EstadoDAO;
import dao.ImagenDAO;
import dao.MenuNivel1DAO;
import dao.MenuNivel2DAO;
import dao.MenuNivel3DAO;
import dao.OpcionPerfilDAO;
import dao.PaisDAO;
import dao.PerfilDAO;
import dao.PersonaDAO;
import dao.TrabajaNosotrosDAO;
import dao.UsuarioDAO;
import dbDAO.dbActualidadLaboralDAO;
import dbDAO.dbBoletinDAO;
import dbDAO.dbContactenosDAO;
import dbDAO.dbEmailDAO;
import dbDAO.dbEstadoDAO;
import dbDAO.dbImagenDAO;
import dbDAO.dbMenuNivel1DAO;
import dbDAO.dbMenuNivel2DAO;
import dbDAO.dbMenuNivel3DAO;
import dbDAO.dbOpcionPerfilDAO;
import dbDAO.dbPaisDAO;
import dbDAO.dbPerfilDAO;
import dbDAO.dbPersonaDAO;
import dbDAO.dbTrabajaNosotrosDAO;
import dbDAO.dbUsuarioDAO;

public class MySqlDAOFactory extends DAOFactory{
	
	public UsuarioDAO getUsuarioDAO(){
		return new dbUsuarioDAO();
	}
    public PersonaDAO getPersonaDAO(){
    	return new dbPersonaDAO();
    }
    public PerfilDAO getPerfilDAO(){
    	return new dbPerfilDAO();
    }
	public PaisDAO getPaisDAO() {
		return new dbPaisDAO();
	}
	public EstadoDAO getEstadoDAO() {
		return new dbEstadoDAO();
	}
	public OpcionPerfilDAO getOpcionPerfilDAO() {
		return new dbOpcionPerfilDAO();
	}
	@Override
	public ActualidadLaboralDAO getActualidadLaboralDAO() {
		return new dbActualidadLaboralDAO();
	}
	@Override
	public ImagenDAO getImagenDAO() {
		return new dbImagenDAO();
	}
	@Override
	public BoletinDAO getBoletinDAO() {
		return new dbBoletinDAO();
	}
	@Override
	public MenuNivel1DAO getMenuNivel1DAO() {
		// TODO Auto-generated method stub
		return new dbMenuNivel1DAO();
	}
	@Override
	public MenuNivel2DAO getMenuNivel2DAO() {
		// TODO Auto-generated method stub
		return new dbMenuNivel2DAO();
	}
	@Override
	public MenuNivel3DAO getMenuNivel3DAO() {
		// TODO Auto-generated method stub
		return new dbMenuNivel3DAO();
	}
	@Override
	public ContactenosDAO getContactenosDAO() {
		// TODO Auto-generated method stub
		return new dbContactenosDAO();
	}
	@Override
	public EmailDAO getEmailDAO() {
		// TODO Auto-generated method stub
		return new dbEmailDAO();
	}
	@Override
	public TrabajaNosotrosDAO getTrabajaNosotrosDAO() {
		// TODO Auto-generated method stub
		return new dbTrabajaNosotrosDAO();
	}
}
