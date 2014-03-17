package whiteseal.controllers;
 
 

import java.security.Principal;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import javax.validation.Valid;
import whiteseal.dao.MainDAO;
import whiteseal.forms.ContactsForm;
import whiteseal.model.*;
import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/ 
 
@Controller
@SessionAttributes
public class MainController {
	
	@Autowired  
	MainDAO mainDAO; 
	
	@Autowired  
	EmailSender emailSender;
 
	@RequestMapping(value={"/", "/welcome"}, method = RequestMethod.GET)
	public String printWelcome(ModelMap model, Principal principal ) {
		
		
		model.addAttribute("menu","home");
		return "dashboard";
 
	}
	
	
	
	@RequestMapping(value="/product_dashboard", method = RequestMethod.GET)
	public String printproduct(ModelMap model, Principal principal,HttpServletResponse response ) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		model.addAttribute("menu","product");
		return "product_dashboard";
	
	}
	
	@RequestMapping(value="/product_use_dashboard", method = RequestMethod.GET)
	public String printproductuse(ModelMap model, Principal principal,HttpServletResponse response ) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		model.addAttribute("menu","productuse");
		return "product_use_dashboard";
	
	}
	@RequestMapping(value="/ordernow", method = RequestMethod.GET)
	public String printordernow(ModelMap model, Principal principal,HttpServletResponse response ) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		model.addAttribute("menu","ordernow");
		return "ordernow";
	
	
	}
	
	@RequestMapping(value="/benefits", method = RequestMethod.GET)
	public String printbenefits(ModelMap model, Principal principal,HttpServletResponse response ) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		model.addAttribute("menu","benefits");
		return "benefits";
	
	}
	
	@RequestMapping(value="/benefits_screen", method = RequestMethod.GET)
	public String printbenefitsscreen(ModelMap model, Principal principal,HttpServletResponse response ) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		return "benefits_screen";
	
	}
	
	@RequestMapping(value="/threads", method = RequestMethod.GET)
	public String printthreads(ModelMap model, Principal principal,HttpServletResponse response ) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		return "threads";
	
	}
	
	/*@RequestMapping(value="/contacts", method = RequestMethod.GET)
	public String printcontacts(ModelMap model, Principal principal ) {
		model.addAttribute("menu","contacts");
		return "contacts";
	
	}

	
	@RequestMapping(value = "/addcontacts", method = RequestMethod.POST)
	public String insert_contacts(HttpSession session,@ModelAttribute("Contacts") @Valid Contacts contacts,
			BindingResult result, ModelMap model, Principal principal) {

		//session.setAttribute("contacts", contacts);
		System.out.println(" get inside the controller........");
				mainDAO.insert_contacts(contacts);
				System.out.println("inserted......");
				ContactsForm contactsForm = new ContactsForm();
				contactsForm.setContacts(mainDAO.getcontacts());
				model.addAttribute("contactsForm", contactsForm);
				model.addAttribute("menu","contacts");
				return "contacts";
		
				}*/
	
	
	@RequestMapping(value={"/","contacts"}, method = RequestMethod.GET)
	public String contacts(HttpSession session,ModelMap model, Principal principal,HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		ContactsForm contactsForm = new ContactsForm();
		contactsForm.setContacts(mainDAO.getcontacts());
		model.addAttribute("contactsForm", contactsForm);
		model.addAttribute("menu","contacts");
		session.removeAttribute("contacts");
		return "contacts";
 
	}

	
	@RequestMapping(value = "/addcontacts", method = RequestMethod.POST)
	public String insert_contacts(HttpSession session,@ModelAttribute("Contacts") @Valid Contacts contacts,
			BindingResult result, ModelMap model, Principal principal) {

				session.setAttribute("contacts", contacts);
				if (result.hasErrors())
				{
					System.out.println("some error while inserting.....");
					ContactsForm contactsForm=new ContactsForm();
					contactsForm.setContacts(mainDAO.getcontacts());
					model.addAttribute("contactsForm",contactsForm);
					model.addAttribute("Success","true");
					return "contacts";
				}
				
				System.out.println(" get inside the controller........");
				mainDAO.insert_contacts(contacts);
				System.out.println("inserted......");
				ContactsForm contactsForm = new ContactsForm();
				contactsForm.setContacts(mainDAO.getcontacts());
				model.addAttribute("contactsForm", contactsForm);
				model.addAttribute("menu","contacts");
				model.addAttribute("success","true");
				return "contacts";
		
				}

	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String login(ModelMap model,HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		model.addAttribute("menu","home");
		
		return "dashboard";
 
	}
	
	@RequestMapping(value="/home", method = RequestMethod.POST)
	public String loginpost(ModelMap model,HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		model.addAttribute("menu","home");
		model.addAttribute("success","true");
		return "dashboard";
 
	}
	
	
	@RequestMapping(value="/email", method = RequestMethod.GET)
	public String email(ModelMap model) {
		
		return "email";
 
	}
	
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
		model.addAttribute("menu","home");
		return "dashboard";
 
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		model.addAttribute("menu","home");
		return "dashboard";
 
	}
	
	@RequestMapping(value="/createuser", method=RequestMethod.GET)
	public String createSpitterProfile(Model model) {
		model.addAttribute(new UserProfile());
	return "edit";
	}
	
	@RequestMapping(value="/submituser", method=RequestMethod.POST)
	public String addUserProfileFromForm(UserProfile userProfile) {
		
		System.out.println("Save User" + userProfile.getFullName());
		return "/welcome";
	}
	
	@RequestMapping(value="/showaddparticipants", method=RequestMethod.GET)
	public String showAddParticipants(ModelMap model) {
		//model.addAttribute(new UserProfile());
		return "addparticipants";
	}
	@RequestMapping(value="/viewparticipants", method=RequestMethod.GET)
	public String viewParticipants(ModelMap model) {
		
		return "viewparticipants";
	}
	@RequestMapping(value="/showaddparticipantgroups", method=RequestMethod.GET)
	public String showAddParticipantGroups(ModelMap model) {
		
		return "addparticipantgroups";
	}
	@RequestMapping(value="/viewparticipantgroups", method=RequestMethod.GET)
	public String viewParticipantGroups(ModelMap model) {
		
		return "viewparticipantgroups";
	}
	
	@RequestMapping(value="/showaddadminuser", method=RequestMethod.GET)
	public String showAddadminUser(ModelMap model) {
		
		return "addadminuser";
	}
	@RequestMapping(value="/viewadminuser", method=RequestMethod.GET)
	public String viewAdminUser(ModelMap model) {
		
		return "viewadminuser";
	}
	
	@RequestMapping(value="/activityofadmin", method=RequestMethod.GET)
	public String activityOfAdmin(ModelMap model) {
		
		return "activityofadmin";
	}
	
	@RequestMapping(value="/textmsgsettings", method=RequestMethod.GET)
	public String textMsgSettings(ModelMap model) {
		
		return "textmsg";
	}

  }