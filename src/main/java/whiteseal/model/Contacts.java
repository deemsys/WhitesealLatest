package whiteseal.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import javax.validation.constraints.Pattern;
import javax.validation.GroupSequence;

public class Contacts {
	@NotEmpty
	private String firstname;
	
	@NotEmpty
	private String lastname;
	
	@NotEmpty
	private String company;
	
	@NotEmpty
	/*@Length(max=10,min=10,message="Phone number is not valid. Should be of length 10.",groups=Contacts.class)
	@Pattern(regexp="(^$|[0-9])",message="Phone number is not valid")*/
    private String business_phone;
	
	
	
	/*@Length(max=10,min=10,message="Mobile number is not valid. Should be of length 10.",groups=Contacts.class)
	@Pattern(regexp="(^$|[0-9]{15})",message="Mobile number is not valid")*/
    @NotEmpty
	private String mobile_phone;
	
	@NotEmpty

	private String email;
	
	
	@NotEmpty
	private String address;
	
	@NotEmpty
	private String city;
	
	@NotEmpty
	private String state;
	
	
/*	@Pattern(regexp ="/(^|d{6}$)|(^|d{6}-|d{4}$)/", message = "Not a valid Zip code")*/
	@NotEmpty
	private String zip;
	
	
	private String ws_cgun;
	
	
	private String becoming_distributor;
	
	@NotEmpty
	private String comments;


public Contacts()
{
	super();
}

public Contacts(String firstname,String lastname,String company,
				String business_phone,String mobile_phone,String zip,
				String address,String city,String state,String email,
				String ws_cgun,String becoming_distributor,String comments)
{
	super();
	this.firstname = firstname;
	this.lastname = lastname;
	this.company = company;
	this.business_phone = business_phone;
	this.mobile_phone = mobile_phone;
	this.email = email;
	this.address = address;
	this.city = city;
	this.state = state;
	this.zip =zip;
	this.ws_cgun = ws_cgun;
	this.becoming_distributor = becoming_distributor;
	this.comments = comments;
}

public String getFirstname() {
	return firstname;
}

public void setFirstname(String firstname) {
	this.firstname = firstname;
}

public String getLastname() {
	return lastname;
}

public void setLastname(String lastname) {
	this.lastname = lastname;
}

public String getCompany() {
	return company;
}

public void setCompany(String company) {
	this.company = company;
}

public String getBusiness_phone() {
	return business_phone;
}

public void setBusiness_phone(String business_phone) {
	this.business_phone = business_phone;
}

public String getMobile_phone() {
	return mobile_phone;
}

public void setMobile_phone(String mobile_phone) {
	this.mobile_phone = mobile_phone;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public String getZip() {
	return zip;
}

public void setZip(String zip) {
	this.zip = zip;
}

public String getWs_cgun() {
	return ws_cgun;
}

public void setWs_cgun(String ws_cgun) {
	this.ws_cgun = ws_cgun;
}

public String getBecoming_distributor() {
	return becoming_distributor;
}

public void setBecoming_distributor(String becoming_distributor) {
	this.becoming_distributor = becoming_distributor;
}

public String getComments() {
	return comments;
}

public void setComments(String comments) {
	this.comments = comments;
}




}


