<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
								<c:when test="${menu=='benefits'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
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
						
						<div class="contentbox" style="margin:0px auto; width:1035px;height:550px;">	
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
						<tr>
						<td align="left" valign="top" width="100%" style="padding-right:25px;">
						<table cellpadding="0" cellspacing="0" border="0" width="50%">
						<tr>
						<div ><img src="<c:url value="/resources/images/title1.png" />" alt="Product Use" style="width:300px;"/></div>
			<div class="indoor">INDOOR-OUTDOOR MULTI-PURPOSE SEALANT</div>
			<div class="benetext">is a VOC complaint general purpose product.</div>
			<table width="80%" style="margin-left:90px;">
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VOC Less than15 g/l</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Available in white and bronze colors</td>
			</tr>
			
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100% Green</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Easily Gunned in Most Temperatures</td>
			</tr>
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Easy Cleanup</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UV and Mildew Resistant</td>
			</tr>
			
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Low order</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Will not Shrink or Crack</td>
			</tr>
			
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Solvent Free</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Weather Tight seal</td>
			</tr>
			
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Long Lasting</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Excellent Tooling</td>
			</tr>
			
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Flexible Repair</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Waterproof</td>
			</tr>
			</table>
			
			
			<div class="benefit">IMPROVE ENERGY EFFICIENCY</div>
			<table width="80%" style="margin-left:90px;">
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Help reduce your energy bill by sealing with WHITE SEAL.</td>
			</tr>
			</table>
			<div class="benefit">COVERAGE</div>
			<table width="80%" style="margin-left:90px;">
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;28 linear feet using 1/4'' bead or 14 linear feet using a 3/8'' bead.</td>
			</tr>
			</table>
			<div class="benefit">SHELF LIFE</div>
			<table width="80%" style="margin-left:90px;">
			<tr class="bene">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use product within 12 months from manufacturers date.</td>
			</tr>
			<tr class="degree">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREEZE THAW STABLE.Store product at 40&deg;F - 80&deg;F.</td>
			</tr>
			</table>
			<div style="margin-left:750px;margin-top:-200px;"><img src="resources/images/logo.png" alt=""></div>
			<div style="margin-left:900px;margin-top:-280px;"><img src="resources/images/use.png" alt="use"></div>
			<div style="margin-left:900px;margin-top:13px;font-size:17px;font-weight:bold;">10.l. fl. oz.</div>
			<div style="margin-left:900px;margin-top:10px;font-size:17px;font-weight:bold;line-height:70%">(300 ml)</div>
			<div style="margin-left:775px;margin-top:-50px;font-size:15px;">COLOR:</div>
			<div style="margin-left:730px;margin-top:5px;font-size:17px;font-weight:bold;">WHITE or BRONZE</div>
			<div style="margin-left:759px;"><img src="resources/images/star.png" alt="star" style="width:20px;height:20px;"><img src="resources/images/star.png" alt="star" style="width:20px;height:20px;"><img src="resources/images/star.png" alt="star" style="width:20px;height:20px;"><img src="resources/images/star.png" alt="star" style="width:20px;height:20px;"><img src="resources/images/star.png" alt="star" style="width:20px;height:20px;"></div>
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
    