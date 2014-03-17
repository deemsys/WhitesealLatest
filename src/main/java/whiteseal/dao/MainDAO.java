package whiteseal.dao;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import javax.sql.DataSource;

/*import org.apache.log4j.Logger;*/
import org.springframework.beans.factory.annotation.Autowired;

import whiteseal.controllers.MainController;
import whiteseal.model.Contacts;
import whiteseal.model.ParticipantsDetails;
import whiteseal.model.EmailSender;

public class MainDAO {
	private DataSource dataSource;
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);//Logger
	private static final Random RANDOM = new SecureRandom();
	
	@Autowired  
	EmailSender emailSender;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public List<ParticipantsDetails> getParticipants(){
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
	    try{
			resultSet = statement.executeQuery("select * from participants_table");
			while(resultSet.next()){
				participants.add(new ParticipantsDetails(resultSet.getString("participants_id"),
			    		resultSet.getString("fname"),
			    		resultSet.getString("lname"),
			    		resultSet.getString("mobile_num"),
			    		resultSet.getString("gender"),
			    		resultSet.getString("city"),
			    		resultSet.getString("education"),
			    		resultSet.getString("note"),
			    		resultSet.getString("medical_details"),
			    		resultSet.getString("messaging_frequency"),
			    		resultSet.getString("group_name"),
			    		resultSet.getString("age"),
			    		resultSet.getString("date_of_join"),
			    		resultSet.getString("email_id"),
			    		resultSet.getString("created_by")));
			}
	    }catch(Exception e){
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	    return participants;
		
	}
	
	public boolean insert_contacts(Contacts contacts)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		boolean status=false;
		
		try {
			con =  dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
				e1.printStackTrace();
		}
		  try{
			  System.out.println("inserting");
			  String cmd_insert="insert into ws_contact_us(firstname,lastname,company,business_phone,mobile_phone,email,address,city,state,zip,ws_cgun,becoming_distributor,comments) values('"+contacts.getFirstname()+"','"+contacts.getLastname()+"','"+contacts.getCompany()+"','"+contacts.getBusiness_phone()+"','"+contacts.getMobile_phone()+"','"+contacts.getEmail()+"','"+contacts.getAddress()+"','"+contacts.getCity()+"','"+contacts.getState()+"','"+contacts.getZip()+"','"+contacts.getWs_cgun()+"','"+contacts.getBecoming_distributor()+"','"+contacts.getComments()+"')"; 
			  statement.execute(cmd_insert);
			  System.out.println("records to be inserted.........");
			  emailSender.contact_sendEmail("vino.baskaran8@gmail.com","learnguild@gmail.com","Contact Us Information",contacts.getFirstname(),contacts.getLastname(),contacts.getCompany(),contacts.getBusiness_phone(),contacts.getMobile_phone(),contacts.getEmail(),contacts.getAddress(),contacts.getCity(),contacts.getState(),contacts.getZip(),contacts.getWs_cgun(),contacts.getBecoming_distributor(),contacts.getComments());
			  emailSender.contact_sendEmail("syed.y.idris@gmail.com","learnguild@gmail.com","Contact Us Information",contacts.getFirstname(),contacts.getLastname(),contacts.getCompany(),contacts.getBusiness_phone(),contacts.getMobile_phone(),contacts.getEmail(),contacts.getAddress(),contacts.getCity(),contacts.getState(),contacts.getZip(),contacts.getWs_cgun(),contacts.getBecoming_distributor(),contacts.getComments());
			  /*emailSender.contact_sendEmail("ems.vino@yahoo.com","learnguild@gmail.com","Contact Us Information",contacts.getFirstname(),contacts.getLastname(),contacts.getCompany(),contacts.getBusiness_phone(),contacts.getMobile_phone(),contacts.getEmail(),contacts.getAddress(),contacts.getCity(),contacts.getState(),contacts.getZip(),contacts.getWs_cgun(),contacts.getBecoming_distributor(),contacts.getComments());*/
			  status=true;
		  }catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
		    return status;
	}


	public List<Contacts> getcontacts(String id) {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		List<Contacts> contacts = new ArrayList<Contacts>();

		try {
			con =  dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			resultSet = statement.executeQuery("select * from ws_contact_us where auto_pid='"+id+"'");
			while (resultSet.next()) {
							
								
				contacts.add(new Contacts(resultSet
						.getString("firstname"), resultSet
						.getString("lastname"), resultSet
						.getString("company"), resultSet
						.getString("business_phone"), resultSet
						.getString("mobile_phone"), resultSet
						.getString("email"), resultSet
						.getString("address"), resultSet
						.getString("city"), resultSet
						.getString("state"), resultSet
						.getString("zip"), resultSet
						.getString("ws_cgun"), resultSet
						.getString("becoming_distributor"),resultSet
						.getString("comments")));
			}

			
		} catch (Exception e) {
			System.out.println(e.toString());
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		} finally {
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		}
		return contacts;
	}

	
	
	
	public List<Contacts> getcontacts() {
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		List<Contacts> contacts = new ArrayList<Contacts>();

		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			resultSet = statement.executeQuery("select * from ws_contact_us");
			while (resultSet.next()) {
							
								
				contacts.add(new Contacts(resultSet
						.getString("firstname"), resultSet
						.getString("lastname"), resultSet
						.getString("company"), resultSet
						.getString("business_phone"), resultSet
						.getString("mobile_phone"), resultSet
						.getString("email"), resultSet
						.getString("address"), resultSet
						.getString("city"), resultSet
						.getString("state"), resultSet
						.getString("zip"), resultSet
						.getString("ws_cgun"), resultSet
						.getString("becoming_distributor"), resultSet
						.getString("comments")));
			}

		} catch (Exception e) {
			System.out.println(e.toString());
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		} finally {
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		}
		return contacts;
	}

	public int sendemail(String auto_pid)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		List<Contacts> contacts = new ArrayList<Contacts>();
		try {
            String cmd;
            
			cmd = "select * from ws_contact_us where auto_pid='"+auto_pid+"'";
			logger.info(cmd);
			resultSet = statement.executeQuery(cmd);
			if(resultSet.next()) {

				//------------------------------------------------------------------------//
				
				
				logger.info("--Before Sending--"); //Logger Test
				//String body=
				
			
				//Email Test
		    //     emailSender.password_sendEmail("vino.baskaran8@gmail.com","learnguild@gmail.com","Contact Us Information",resultSet.getString("firstname"));
		       
		      /*  model.addAttribute("success","true");
		       */ 
		        try{
		        /*	messageSender.sendSMS("6144670389", "Deemsys test");
		       */  
				System.out.println("--After Sent--");
		        flag=1;
		        	}catch(Exception e){e.printStackTrace();}
		        
		        
		      //------------------------------------------------------------------------//
				
			}
		} catch (Exception e) {
			logger.info("email:"+e.toString());
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		} finally {
			releaseResultSet(resultSet);
			releaseStatement(statement);
			releaseConnection(con);
		}
	    if(flag==1)
	    {
	    	return 1;
	    }
	    else
	    	return 0;

	}
	public void releaseConnection(Connection con){
		try{if(con != null)
			con.close();
		}catch(Exception e){}
	}
	public void releaseResultSet(ResultSet rs){
		try{if(rs != null)
			rs.close();
	}catch(Exception e){}
	}
	public void releaseStatement(Statement stmt){
		try{if(stmt != null)
			stmt.close();
	}catch(Exception e){}
	}

}
