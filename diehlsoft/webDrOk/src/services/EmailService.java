package services;


import bean.BeanEmail;
import dao.EmailDAO;
import factories.DAOFactory;

public class EmailService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private EmailDAO objEmailDAO =objDAOFactory.getEmailDAO();
	
	public BeanEmail emaSearchXTipo(BeanEmail bean) throws Exception{
		BeanEmail bean2=objEmailDAO.emaSearchXTipo(bean);
		return bean2;
	}

}
