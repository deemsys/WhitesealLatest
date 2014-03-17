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
								<a href="products_dashboard" class="<c:choose>
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
								<a href="contacts" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
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
<div class="contentbox" style="margin:0px auto; width:1035px;height:1400px;">	
 <div style="margin-left:50px">
	      		            <table class = "tt">
				            <p align = "left" class="text1">Quite Possibly The Best Sealant On The Planet</p>
				            <p ><br>WHITE SEAL<sup>TM</sup> INDOOR OUTDOOR MULTI-PURPOSE SEALANT in a VOC complaint general purpose product.</p> 
				            <p class ="r1">WHITE SEAL<sup>TM</sup>VOC : Less than 15g/l.
				           <div id="voc"> <p><b>WHAT ARE VOCs?</b> Volatile organic compounds (VOCs) are emitted as gases from certain solids or liquids. <br>
<p style="line-height:70%;">VOCs include a variety of chemicals, some of which may have short- and long-term adverse health effects. <br></p>
<p style="line-height:70%;">Concentrations of many VOCs are consistently higher indoors (up to ten times higher) than outdoors. VOCs are <br></p>
<p style="line-height:70%;">emitted by a wide array of products numbering in the thousands. Examples include: paints and lacquers, paint strippers,<br></p>
<p style="line-height:70%;">cleaning supplies, pesticides, building materials and furnishings, including glues and adhesives, permanent markers,<br></p>
<p style="line-height:70%;">and photographic solutions.<br><br></p></div>
<div id="cautions"><h4 class = "r2" >PRODUCT CAUTIONS:</h4><br/>
<p >Avoid breathing vapors. Avoid prolonged or repeated skin contact.<br><br></p>
<p style="line-height:70%;">KEEP OUT OF REACH OF CHILDREN:  First Aid Skin: Wash with soap and water.<br></p>
<p style="line-height:70%;">Eyes: SEEK MEDICAL ATTENTION.  Inhalation: causing discomfort: Remove to fresh air.<br></p>
<p style="line-height:70%;">If discomfort persists or any breathing difficulty occurs, or if swallowed,<br></p>
<p style="line-height:70%;">SEEK IMMEDIATE MEDICAL ATTENTION. Additional information please refer to MSOS.<br></p>
<p style="line-height:70%;">DISPOSAL: For disposal of material follow federal, state and local regulations.<br><br></p></div>
<div id="warranty"><h4 class = "r2">LIMITED WARRANTY: </h4><br/>
<p>Satisfaction guaranteed when handled and applied according to label instructions.<br><br></p></div>
<div id="bene"><p><b>BENIFITS :</b>&nbsp;&nbsp;&nbsp;<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> VOC Less than15 g/l &nbsp;&nbsp;<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> 100% Green &nbsp;&nbsp;<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" />Easy Cleanup&nbsp;&nbsp; 
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> Low Odor &nbsp;&nbsp;  
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> Solvent Free &nbsp;&nbsp;  
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> Long Lasting &nbsp;&nbsp;<br></p>
<p style="line-height:70%;"><img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" />Flexible Repair &nbsp;&nbsp; 
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" />  UV and Mildew Resistant &nbsp;&nbsp;
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" />   Waterproof  Will Not Shrink or Crack &nbsp;&nbsp;
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> Weather Tight Seal &nbsp;&nbsp;<br></p>
<p style="line-height:70%;"><img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> Excellent Tooling  &nbsp;&nbsp; 
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" /> Available in white and bronze colors &nbsp;&nbsp;
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" />  Easily Gunned in Most Temperatures&nbsp;&nbsp;<br><br></p></div>

<h4 class="r2">IMPROVE ENERGY EFFICIENCY :</h4><br/>
<img src="<c:url value="/resources/images/bull.png" />" alt="bull" width = "7" height = "7" />Help reduce your energy bill by sealing with White Seal<sup>TM</sup><br><br>
<h4 class = "r2">PRODUCT USE:</h4><br/>
<p style="line-height:70%;">Interior and Exterior, Windows, Doors, Siding, Metal Trim, Flashing, Metal Roofing, Gutters, Ducts, Vents, Wood Trim.<br></p>
<p style="line-height:70%;">Not recommended for use in deep joints.<br><br></p>
<div id="directions"><h4 class = "r2">PRODUCT DIRECTIONS:</h4><br/>
<p style="line-height:70%;">Surfaces to be sealed should be clean, dry, free from oils, loose mortar, release agents, old caulk,<br> </p>
<p style="line-height:70%;">old paint or other contaminants.<br></p>
<p style="line-height:70%;">1.Cut cartridge tip to desired orifice size.<br></p>
<p style="line-height:70%;">2.Insert cartridge in caulking gun and trim top edge of threading tip.<br></p>
<p style="line-height:70%;">3.Screw on nozzle and cut to desired size, 3/8" is recommended.<br></p>
<p style="line-height:70%;">4. Fill gap with sealant. Smooth or tool bead if necessary.<br></p>
<p style="line-height:70%;">5. Wipe away wet material.<br><br></p>
<p style="line-height:70%;">COVERAGE PER TUBE:  28 linear feet using 1/4" bead or 14 linear feet using a 3/8" bead.<br></p>
<p style="line-height:70%;">SHELF LIFE:  Use product within 12 months from manufacturers date. <br></p>
<p style="line-height:70%;">FREEZE THAW STABLE. Store product at 40ºF - 80ºF<br><br></p></div>
<div id="distribution"><h4 class = "r2">DISTRIBUTION:</h4><br/>
<p style="line-height:70%;">White Seal<sup>TM</sup> is for sale and distribution in the United States only.  Excluding Hawaii and Alaska.<br></p>
<p style="line-height:70%;">For more information, please contact your White Seal<sup>TM</sup> representative at<br></p>
<p style="line-height:70%;">1 (888) 959-8156.</p></td></div>

<div style="position: relative; top: -20px; right: 100px;float: right; "><a href="#"><img src="<c:url value="/resources/images/threads.png" />" alt="threads" /></a></div>
</table>
</div></div></div></td></tr></table></form></div>
				            
				        
<jsp:include page="footer.jsp"></jsp:include>    