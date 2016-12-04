package factories;


import dao.ActualidadLaboralDAO;
import dao.AlternativaDAO;
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
import dao.PreguntaDAO;
import dao.TrabajaNosotrosDAO;
import dao.UsuarioDAO;

public abstract class DAOFactory {
	
	  public static final int MYSQL = 1;
	  public static final int ORACLE = 2;
	  public static final int DB2 = 3;
	  public static final int SQLSERVER = 4;
	  public static final int XML = 5;
	    
	  
	  public abstract UsuarioDAO getUsuarioDAO();
	  public abstract PersonaDAO getPersonaDAO();
	  public abstract PerfilDAO getPerfilDAO();
	  public abstract PaisDAO getPaisDAO();
	  public abstract EstadoDAO getEstadoDAO();
	  public abstract OpcionPerfilDAO getOpcionPerfilDAO();
	  public abstract ActualidadLaboralDAO getActualidadLaboralDAO();
	  public abstract ImagenDAO getImagenDAO();
	  public abstract BoletinDAO getBoletinDAO();
	  public abstract MenuNivel1DAO getMenuNivel1DAO();
	  public abstract MenuNivel2DAO getMenuNivel2DAO();
	  public abstract MenuNivel3DAO getMenuNivel3DAO(); 
	  public abstract ContactenosDAO getContactenosDAO();
	  public abstract EmailDAO getEmailDAO();
	  public abstract TrabajaNosotrosDAO getTrabajaNosotrosDAO();
	  public abstract PreguntaDAO getPreguntaDAO();
	  public abstract AlternativaDAO getAlternativaDAO();
	  
	  public static DAOFactory getDAOFactory(int whichFactory) {
	    switch (whichFactory) {
	      case MYSQL:
	        return new MySqlDAOFactory();
	        /* case ORACLE:
	        return new OracleDAOFactory();
	      case SQLSERVER:
	        return new SqlServerDAOFactory();
	      case DB2:
	          return new Db2DAOFactory();
	        case XML:
	          return new XmlDAOFactory();*/
	      default:
	        return null;
	    }
	  }
}
