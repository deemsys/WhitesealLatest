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
								<c:when test="${menu=='home'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
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
						
						<div class="contentbox" style="margin:0px auto; width:1035px;">
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
                        
                       <p class="para"> VOC: Less than 15g/l. 100% &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GREEN</p>
                   </div>
</tr>
</table>
</td>



</tr></table>
<div class="seal">
<img src="resources/images/body_cnt.png" style="width:800px;"/>
</div>
<p class="text"> Quite Possibly The Best Sealant On The Planet.</p>
<table class="points">
<tr class="bullet">
<td>VOC Less than15 g/l</td>
<td>Flexible Repair</td>
<td>Excellent Tooling</td>
</tr>
<tr class="bullet">
<td style=" padding-left: 20px; margin-bottom: 10px;height:10px;padding-right:30px;font-size:150%;">100% Green</td>
<td >UV and Mildew Resistant</td>
<td >Available in white and</td>
</tr>
<tr >
<td class="circle">Easy Cleanup</td>
<td class="circle">Waterproof</td>
<td class="nobullet">bronze colors</td>
</tr>
<tr class="bullet">
<td >Low Oder</td>
<td >Will not Shrink or Crack</td>
<td >Easily Gunned in Most</td>
</tr>
<tr >
<td class="circle">Long Lasting</td>
<td class="circle">Weather Tight Seal</td>
<td class="nobullet">Temperatures</td>
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
