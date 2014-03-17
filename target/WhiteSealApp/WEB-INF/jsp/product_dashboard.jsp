<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<!-- response.setHeader("Cache-Control", "no-cache");
response.setDateHeader("Expires", 0); -->
<div id="right_content">
	<form action="?do=viewparticipants" name="dashboard" method="POST">
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
								<c:when test="${menu=='product'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
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
								<a href="contacts" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>CONTACT US</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="ordernow" class="<c:choose>
								<c:when test="${menu=='ordernow'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span style="color:#FF3300;">ORDER NOW</span>
									
								</a>
							</li>
				            </ul>
						</div>

	           <div class="contentbox" style="margin:0px auto; width:1035px;height:600px;">
						<table cellpadding="0" cellspacing="0" border="0">
						<tr>

 <!-- <td width ="30"></td> -->
						<td>
						<table cellpadding="0" cellspacing="0" border="0">
						<!-- <tr valign="top" height="200px"> -->
						<tr>
						<td>
			<table>
			<tr>
		 	<td valign = "top" >
			<a href="#"><img src="<c:url value="/resources/images/title1.png" />" alt="Company title"/ width = "350" height = "100"></a> 
			</td></tr>
		 
		 	<table style = "margin-left:30px;">
		 	<tr valign="top" align="left">
		 	<td valign="top">
			<a href="#"><img src="<c:url value="/resources/images/bodyy.png" />" alt="Company title" / height = "400"></a> 
			<br><br><p style = "font-size:15px;font-weight:bold;margin-top:5px;" align = "center">10.1 fl. oz.<br>(300ml)</td>
			
			
			<td width = "30"></td>
			<td align="left">
			<a href="#"><img src="<c:url value="/resources/images/logo.png" />" alt="Company title" / width = "170"></a> 
			
			
			<!-- <p><h8><font color="#86bd3c"><font-size:14px; text-align: center; font-family : Arial; >VOC is less than<br> 15 g/l.</font-size:14px></font></h8></p>
			
			<p><h8><font color="#86bd3c">100 % GREEN.</b>Professional<br>Grade Formula.</font></h8></p>
			 -->
			 <p class="pp">VOC is less than<br> 15g/l.<br>
			 <p>Industry average is 250-500 g/l.</p>
			 <br>
			 <p class="pp">100 % GREEN.<br><br>Professional<br>Grade Formula.</p>
			 &nbsp;&nbsp;<p style = "font-size:15px;">COLOR:</p>
			 <p style = "font-size:15px;font-weight:bold;line-height:5%">WHITE OR BRONZE</p>
			 
			</td>
		
			</tr>
		</table>
		 </table>
	
	 </td>
	 <td width = "10"></td>
<td width="400">
<table  width = "400" >
			 <td valign="top">
			 <%-- <a href="#"><img src="<c:url value="/resources/images/indoor.png" />" alt="Company title" /> </a>
		<br><br> --%> <table  width="400">
		<!-- <br><br> -->
  <p class="pi">INDOOR-OUTDOOR<br>MULTIPURPOSE SEALANT</p>
  
<tr>
<br>
<td style = "font-weight:bold;"><span style="font-weight:bold;font-size:14px;" width="220">Component</span></td>
<td style = "font-weight:bold;"><span style="font-weight:bold;font-size:14px;margin-left:40px;">CAS No.</span></td>
</tr>

<tr>
<td style = "font-weight:bold;">Polydimethylsiloxane</td>
<td style = "font-weight:bold;"><span style="margin-left:40px;">9006-65-9</span></td>
</tr>

<tr>
<td style = "font-weight:bold;">Silicone Oil</td>
<td style = "font-weight:bold;"><span style="margin-left:40px;">63148-62-9</span></td>
</tr>


<tr><td style = "font-weight:bold;">Methyltris(methylethylketoximino)</td></tr>

<tr>
<td style = "font-weight:bold;" width = "20%">Silane (MOS)</td>
<td style = "font-weight:bold;"><span style="margin-left:40px;">22984-54-9</span></td>
</tr>

<tr><td style = "font-weight:bold;">White Carbon Black</td>
	<td style = "font-weight:bold;"><span style="margin-left:40px;">10279-57-9</span></td>
</tr>

<tr><td style = "font-weight:bold;">Dibutyltindilaurate</td>
	<td style = "font-weight:bold;"><span style="margin-left:40px;">77-58-7</span></td>
</tr>
</table>

<br>	 

<p align="left" style = "font-weight:bold;"><span style="font-weight:bold;font-size:14px;">CAUTION:</span> Avoid breathing vapors.<br>
Avoid prolonged or repeated skin contact.
<br>
<br>
<span style="font-weight:bold;font-size:14px;">KEEP OUT OF REACH OF CHILDREN:</span><br>
<span style="font-weight:bold;font-size:14px;">First Aid Skin: </span>Wash with soap and water.<br>
<span style="font-weight:bold;font-size:14px;">Eyes:</span> SEEK MEDICAL ATTENTION.<br>
<span style="font-weight:bold;font-size:14px;">Inhalation Causing Discomfort:</span> <br>Remove to fresh air.<br>
If discomfort persists or any breathing difficulty<br>
occurs, or if swallowed, SEEK IMMEDIATE<br>
MEDICAL ATTENTION. Additional information<br>
please refer to MSOS.<br>
<br>
<span style="font-weight:bold;font-size:14px;">DISPOSAL:</span>For disposal of material follow<br>
federal, state and local regulations.<br>
<br>
<span style="font-weight:bold;font-size:14px;">LIMITED WARRANTY:</span>Satisfaction guaranteed<br>
when handled and applied according to<br>
label instructions.</p>

</td>
</table></td>

<td width = "10"></td>
<td valign="top">

	<br><br><br><br>
		<p style = "font-size:25px;
		font-weight:bold;
    color:red;
    font-family:Arial Black;">ORDER</p><br><br>
		<p style = "font-size:20px;font-weight:bold">Carton<br>
		<br>Pallet<br>
		<br>Truck</p><br>
	
<br><br><br><br><br><br><br>
	<a href="#"><img src="<c:url value="/resources/images/order.png"/>"  alt="Company title" /></a>
	<br><p style = "font-size:15px;line-height:5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COLOR:</p><p style = "font-size:15px;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RED or BLUE</p>
	</td>
	</tr>
	
</table>
</td>
</tr>
</table>
</div>
</div>
</td>
</tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>

    