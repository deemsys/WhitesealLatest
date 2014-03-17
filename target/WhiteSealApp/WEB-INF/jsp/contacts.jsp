<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<!-- response.setHeader("Cache-Control", "no-cache");
response.setDateHeader("Expires", 0); -->
<script src="resources/js/jquery1.7.2.js" type="text/javascript"></script>
<div id="right_content">
	<form action="addcontacts" name="contacts" method="POST">
		<table cellpadding="0" cellspacing="0" border="0" width="83%"
			class="margin_table">

			<tr>
				<td valign="top" align="left"><div>
						
						
						<div style="margin:0px auto;width:1195px;">
						<ul class="horizmenu" style="margin-left:70px;">
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="home" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>HOME</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="product_dashboard" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>PRODUCTS</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="product_use_dashboard" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>PRODUCT USE</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="benefits" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>BENEFITS</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="" class="<c:choose>
								<c:when test="${menu=='contacts'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>CONTACT US</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="ordernow" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span style="color:#FF3300;">ORDER NOW</span>
									
								</a>
							</li>
				            </ul>
						</div>
						<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table" id="su">

			<c:if test="${success==true}">
				<tr>
					<td valign="top" align="left" style="padding: 5px 0 10px 0;">&nbsp;
						<div style="width:1050px;margin-left:45px;" id="success_statusbar" class="status success">
							<p class="closestatus">
								<a title="Close" href="contacts">x</a>
							</p>
							<p>
								<span>Thank You For Contacting WhiteSeal  ! ! !</span>
							</p>
						</div>
						</td>
				</tr>
			</c:if>

		</table>
						
						<div class="contentbox" style="margin:0px auto; width:1035px; height:550px;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%" style="padding-left:30px;">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:300px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0">
                       	<tr>
                        	<td>
							<p class="text6">CONTACT US</p>
							<p class="text5">1(888)959-8156</p>
							</td>
						<td width="25"></td>
						<td align="left">
						<a href="#"><img src="<c:url value="/resources/images/images.jpg" />" alt="Company title" width="60" height="60"/></a> 
						</td>
						</tr>
						</table>
						
						
						<p class="normaltext">For product or dealer information, please contact us by calling or filling out the form below.<br>
						Someone will be contacting you shortly.</p>
						
						
						<table width="120%">
						<tr>
						<td width="50%">
						<table>
						
						<tr>
						<td valign="top" align="left" class="input_txt" width="500"><span>*</span><b>First Name:</b></td>
	                    <td valign="top" align="right" class="input_txt" width="40%"><input type="text" name="firstname" class="input_txtbx2" id="fname" oninput="validateAlpha();" onblur="toTitleCase('fname')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.firstname }" /><br><span class="err"><form:errors path="Contacts.firstname"></form:errors></span></td>
						</tr>
						
						<tr>
                  		<td valign="top" align="left" class="input_txt" width="30%"><span>*</span><b>Last Name:</b></td>
	                    <td valign="top" align="right" class="input_txt" width="70%"><input type="text" name="lastname" class="input_txtbx2" id="lname" oninput="validateAlpha1();" onblur="toTitleCase('lname')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.lastname }" /><br><span class="err"><form:errors path="Contacts.lastname"></form:errors></span></td>
						</tr>
						
						<tr>
                  		<td valign="top" align="left" class="input_txt" width="30%"><span>*</span><b>Company:</b></td>
	                    <td valign="top" align="right" class="input_txt" width="70%"><input type="text" name="company" class="input_txtbx2" id="company" oninput="validateAlpha2();" onblur="toTitleCase('company')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.company }" /><br><span class="err"><form:errors path="Contacts.company"></form:errors></span></td>
						</tr>
						
						<tr>
                  		<td valign="top" align="left" class="input_txt" width="70%"><span>*</span><b>Business Phone:</b></td>
						<td valign="top" align="right" class="input_txt"><input type="text" class="input_txtbx2" maxlength="15" id="bphone" onblur="Validate3('bphone')"  
													onmouseover="showTooltip('tooltip_id','inp_id3');"
													onmouseout="hideTooltip('tooltip_id');"
													value="${contacts.business_phone}" name="business_phone" /><br><font color="Red" size="+1"><span id="spnmno"></span></font>
													 <c:if test="${mobile_exists ==true}"> <font color="Red" size="+1"><span id="spnmno"></span>Mobile Number already exists </font>	<br/></c:if>
													<font color="Red" size="+1"><span id="spnmno">
													<form:errors path="Contacts.business_phone"></form:errors> </span></font></td>
			 
						 </tr>
						
						<tr>
                  		<td valign="top" align="left" class="input_txt" width="30%"><span>*</span><b>Mobile Phone:</b></td>
	        <%--             <td valign="top" align="right" class="input_txt" width="70%"><input type="text" name="mobile_phone" class="input_txtbx2" min="10" maxlength="10" id="mno" value="${contacts.mobile_phone }" /><br><span class="err" id="phonenumber"><form:errors path="Contacts.mobile_phone"></form:errors></span></td>
			 --%>			<td valign="top" align="right" class="input_txt"><input type="text" class="input_txtbx2" maxlength="15" id="mphone" onblur="Validate4('mphone')"
													onmouseover="showTooltip('tooltip_id','inp_id3');"
													onmouseout="hideTooltip('tooltip_id');"
													value="${contacts.mobile_phone}" name="mobile_phone" /><br/ > <font color="Red" size="+1"><span id="spnmno"></span></font>
													 <c:if test="${mobile_exists ==true}"> <font color="Red" size="+1"><span id="spnmno"></span>Mobile Number already exists </font>	<br/></c:if>
													<font color="Red" size="+1"><span id="spnmno">
													<form:errors path="Contacts.mobile_phone"></form:errors> </span></font></td>
			 
						</tr>

						
						<tr>
                  		<td valign="top" align="left" class="input_txt" width="10%"><span>*</span><b>Email:</b></td>
	                    <%-- <td valign="top" align="right" class="input_txt" width="70%"><input type="text" name="email" class="input_txtbx2" id="inp_website" onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.email}" /><br><span class="err"><form:errors path="Contacts.email"></form:errors></span></td>
						 --%>
						 <td valign="top" align="right" class="input_txt" width="70%"><input
													type="text" class="input_txtbx2" id="email" onblur="Validate5('email')"
													onmouseover="showTooltip('tooltip_id','inp_id3');"
													onmouseout="hideTooltip('tooltip_id');" name="email" value="${contacts.email}"/></br>
													<font color="Red" size="+1"><span id="spneid">
																			 <c:if test="${email_exists ==true}"> <font color="Red" size="+1"><span id="spnlname"></span>Email already exists </font>	<br/></c:if>
																				
													<form:errors
																path="Contacts.email"></form:errors> </span></font></td>
						 
						 </tr>

						
						<tr>
                  		<td valign="top" align="left" class="input_txt" width="30%"><span>*</span><b>Address:<br>(NO P.O.BOXES)</b></td>
	                    <td valign="top" align="right" class="input_txt" width="200"><textarea  style="height:70px;" id="addresss" name="address" class="input_txtbx3" onblur="toTitleCase('addresss')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.address }">${contacts.address }</textarea><br><span class="err"><form:errors path="Contacts.address"></form:errors></span></td>
						</tr> 
						</table>
				
				<!-- <td width="50"><table width="100"></table></td>
	 -->		
				<td width = "5%"></td>
								<td width="65%">
						<table>
						
						<tr><br>
								<td valign="top" align="left" class="input_txt" 	><span>*</span><b>City:</b></td>
	                    <td valign="top" align="right" class="input_txt" ><input type="text" name="city" class="input_txtbx2" id="city"  oninput="validateAlpha3();" onblur="toTitleCase('city')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.city }" /><br><span class="err"><form:errors path="Contacts.city"></form:errors></span></td>
						</tr>
						
						<tr>
						<td valign="top" align="left" class="input_txt" width="30%"><span>*</span><b>State:</b></td>
	                    <td valign="top" align="right" class="input_txt" width="40%"><input type="text" name="state" class="input_txtbx2" id="state" oninput="validateAlpha4();" onblur="toTitleCase('state')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.state }" /><br><span class="err"><form:errors path="Contacts.state"></form:errors></span></td>
						</tr>
						<tr>
						<td valign="top" align="left" class="input_txt" width="30%"><span>*</span><b>Zip:</b></td>
			            <td valign="top" align="right" class="input_txt" width="40%"><input type="text" class="input_txtbx2" id="zip" onblur="toTitleCase('zip')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.zip}" name="zip"/></br><font color="Red" size="+1"><span id="spncity"><form:errors path="Contacts.zip"></form:errors></span> </font></td>
						</tr>
						</table>
						<table>
						<tr>
						<td width="300"><input type="checkbox" name="ws_cgun" value="White seal and caulk gun" id="cgun"/>&nbsp;&nbsp;<b>White Seal and Caulking Gun</b></td>
						</tr>
						
						<tr>
						<td><input type="checkbox" name="becoming_distributor" value="Becoming a Distributor" id="distributor"/>&nbsp;&nbsp;<b>Becoming a Distributor (or) Preferred Retailer</b></td>
						</tr>
						</table>
						<table>
						<tr><td><span>*</span><b>Comments(Limited to 1000 Characters)</b></td></tr>
						<tr><td valign="top" align="right" class="input_txt">
					    <tr><td><textarea style="height:80px;"name="comments" class="input_txtbx4" id="comments" onblur="toTitleCase('comments')"  onmouseover="showTooltip('tooltip_id','inp_id3');" onmouseout="hideTooltip('tooltip_id');" value="${contacts.comments}">${contacts.comments}</textarea><br><span class="err"><form:errors path="Contacts.comments"></form:errors></span></td>
							</tr>			
						
						</table>
						</table>
						</td>
						
						</tr>
					
						</table>
						
						<table>
						<tr>
						<td >
						<div class="oo1">
						Product is current only for sale and distribution in the United States.<br>
						Excluding Alaska and Hawaii.</div></td>
						<td align="right" ><input type="submit" name="send" value="Send" class="send" onclick="return check('this')"/>
						<%-- <div style="margin-left:180px;"><img src="<c:url value="/resources/images/send-button.png" />" alt="Company title" width="100" height="40"/></div> --%> 
						</td>
						</tr>
						
						<!-- <tr >
                  
                  <td valign="top" align="center"></td>
				  <td valign="top" align="center"><input type="submit" class="submit_btn1" value="Submit" class="submit_btn1">
				 </td> -->
						</table>
						
						</div>
						</div>
						</td>
						</tr>
						
						
						
						 
				</table></form></div>				
                        
<jsp:include page="footer.jsp"></jsp:include>

<script>
$(document).ready(function () {
//called when key is pressed in textbox
$("#bphone").keypress(function (e) {
   //if the letter is not digit then display error and don't type anything
   if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
      //display error message
      $("#errmsg").html("Kindly give numbers").show();
             return false;
  }
   else{
  	 $("#errmsg").html("Kindly give numbers").fadeOut();
   }
 });
}); 

$(document).ready(function () {
//called when key is pressed in textbox
$("#mphone").keypress(function (e) {
   //if the letter is not digit then display error and don't type anything
   if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
      //display error message
      $("#errmsg1").html("Kindly give numbers").show();
             return false;
  }
   else{
  	 $("#errmsg1").html("Kindly give numbers").fadeOut();
   }
 });
}); 

$(document).ready(function () {
	//called when key is pressed in textbox
	$("#zip").keypress(function (e) {
	   //if the letter is not digit then display error and don't type anything
	   if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	      //display error message
	      $("#errmsg1").html("Kindly give numbers").show();
	             return false;
	  }
	   else{
	  	 $("#errmsg1").html("Kindly give numbers").fadeOut();
	   }
	 });
	}); 
	
	
	
	
function validateAlpha(){
    var textInput = document.getElementById("fname").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("fname").value = textInput;
}
	
function validateAlpha1(){
    var textInput = document.getElementById("lname").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("lname").value = textInput;
}

function validateAlpha2(){
    var textInput = document.getElementById("company").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("company").value = textInput;
}

function validateAlpha3(){
    var textInput = document.getElementById("city").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("city").value = textInput;
}

function validateAlpha4(){
    var textInput = document.getElementById("state").value;
    textInput = textInput.replace(/[^A-Za-z]/g, "");
    document.getElementById("state").value = textInput;
}
	


</script>



<script>
function check(){
	
	
if(document.getElementById("fname").value==''){
	alert("First Name is required");
	return false;
}
else if(document.getElementById("lname").value==''){
	alert("Last Name is required");
	return false;
}
else if(document.getElementById("company").value==''){
	alert("Comapany Name is required");
	return false;
}
else if(document.getElementById("bphone").value==''){
	alert("Business Phone Number is required");
	return false;
}
else if(document.getElementById("bphone").value!=''){
	var phoneno=document.getElementById("bphone").value;
	if(phoneno.length<10)
		{
		alert("Invalid Phone Number");
		return false;
		}
}
if(document.getElementById("mphone").value==''){
	
	alert("Mobile Number is required");
		return false;
		}
if(document.getElementById("mphone").value!=''){
	var phonenumber=document.getElementById("mphone").value;
	if(phonenumber.length<10)
		{
		alert("Invalid Mobile Number");
		return false;
		}
}
if(document.getElementById("email").value==''){
	alert("Email Address is required");
		return false;
		
}
if(document.getElementById("email").value!='')
	{
	 var email = document.getElementById("email").value;
	 var pattern =/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	   if(!pattern.test(email)) 
		   {
		   alert("Invalid Email Address");
	    return false;
		   }
	   }
if(document.getElementById("addresss").value=='')
{
	alert("Address is required");
    return false;

   }   

if(document.getElementById("city").value=='')
{
	alert("City is required");
    return false;

   }	
if(document.getElementById("state").value=='')
{
	alert("State is required");
    return false;

   }	
if(document.getElementById("zip").value=='')
{
	alert("Zipcode is required");
    return false;
   }		
if(document.getElementById("zip").value!='')
	{
	zip=document.getElementById("zip").value;
if(zip.length<5 || zip.length>15)
{
alert("Invalid Zip Code");
return false;
}
}
if(document.getElementById("comments").value=='')
{
	alert("Comments is required");
    return false;
   }


}
</script>
<script>
function toTitleCase(fname)
{
    str=document.getElementById(fname).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(fname).value=str;
}
function toTitleCase(lname)
{
    str=document.getElementById(lname).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(lname).value=str;
}
function toTitleCase(company)
{
    str=document.getElementById(company).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(company).value=str;
}
function toTitleCase(addresss)
{
    str=document.getElementById(addresss).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(addresss).value=str;
}
function toTitleCase(city)
{
    str=document.getElementById(city).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(city).value=str;
}
function toTitleCase(state)
{
    str=document.getElementById(state).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(state).value=str;
}
function toTitleCase(comments)
{
    str=document.getElementById(comments).value;
    str= str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    document.getElementById(comments).value=str;
}


</script>


