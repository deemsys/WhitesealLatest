package whiteseal.model;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineUtils;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Component("emailSender")
public class EmailSender {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private VelocityEngine velocityEngine;

	public static final String TEMPLATE_NAME = "sample_template.vm";

	public void sendEmail(final String toEmailAddresses,
			final String fromEmailAddress, final String subject) {
		sendEmail(toEmailAddresses, fromEmailAddress, subject, null, null);
	}

	public void sendEmailWithAttachment(final String toEmailAddresses,
			final String fromEmailAddress, final String subject,
			final String attachmentPath, final String attachmentName) {
		sendEmail(toEmailAddresses, fromEmailAddress, subject, attachmentPath,
				attachmentName);
	}

	private void sendEmail(final String toEmailAddresses,
			final String fromEmailAddress, final String subject,
			final String attachmentPath, final String attachmentName)
	{
		MimeMessagePreparator preparator = new MimeMessagePreparator() 
		{
			public void prepare(MimeMessage mimeMessage) throws Exception 
			{
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage,
						true);
				message.setTo(toEmailAddresses);
				message.setFrom(new InternetAddress(fromEmailAddress));
				message.setSubject(subject);
				// Pass values to Template
				Map<String, String> model = new HashMap<String, String>();
				String participantName = "Deemsys"; // select from databse
				String fromName = "Suresh"; // get from Mail settings Table
				model.put("toName", participantName);
				model.put("fromName", fromName);
				// Pass values to Template End
				String body = VelocityEngineUtils.mergeTemplateIntoString(
						velocityEngine, "templates/" + TEMPLATE_NAME, "UTF-8",
						model);
				message.setText(body, true);
				if (!StringUtils.isBlank(attachmentPath)) 
				{
					FileSystemResource file = new FileSystemResource(
							attachmentPath);
					message.addAttachment(attachmentName, file);
				}
			}
		};
		this.mailSender.send(preparator);
	}

	// Password Sending starts
	public void contact_sendEmail(final String toEmailAddresses,
			final String fromEmailAddress, final String subject,
			final String Firstname,final String Lastname,final String Company,final String business_phone,final String mobile_phone,final String email,final String address,final String city,final String state,final String zip,final String ws_cgun,final String becoming_distributor,final String comments) {
		pswd_sendEmail(toEmailAddresses, fromEmailAddress, subject, Firstname, Lastname, Company, business_phone, mobile_phone, email, address, city, state, zip, ws_cgun, becoming_distributor, comments);
	}

	private void pswd_sendEmail(final String toEmailAddresses,
			final String fromEmailAddress, final String subject,
			final String Firstname,final String Lastname,final String Company,final String business_phone,final String mobile_phone,final String email,final String address,final String city,final String state,final String zip,final String ws_cgun,final String becoming_distributor,final String comments) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() 
		{
			public void prepare(MimeMessage mimeMessage) throws Exception
			{
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage,
						true);
				message.setTo(toEmailAddresses);
				message.setFrom(new InternetAddress(fromEmailAddress));
				message.setSubject(subject);
				// Pass values to Template
				Map<String, String> model = new HashMap<String, String>();
				model.put("firstName", Firstname);
				model.put("lastname", Lastname);
				model.put("company", Company);
				model.put("business_phone", business_phone);
				model.put("mobile_phone", mobile_phone);
				model.put("email", email);
				model.put("address", address);
				model.put("city", city);
				model.put("state", state);
				model.put("zip", zip);
				model.put("ws_cgun", ws_cgun);
				model.put("becoming_distributor", becoming_distributor);
				model.put("comments", comments);
				
				
				// Pass values to Template End
				String body = VelocityEngineUtils.mergeTemplateIntoString(
						velocityEngine, "templates/" + TEMPLATE_NAME, "UTF-8",
						model);
				message.setText(body, true);
				/*if (!StringUtils.isBlank(attachmentPath)) {
					FileSystemResource file = new FileSystemResource(
							attachmentPath);
					message.addAttachment(attachmentName, file);*/
			
			}
		};
		try
		{
		this.mailSender.send(preparator);
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());
		}
		
	}
	// Password Sending ends

}
