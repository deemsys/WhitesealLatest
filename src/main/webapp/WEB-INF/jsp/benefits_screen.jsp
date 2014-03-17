<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<div id="right_content">
	<form action="?do=viewparticipants" name="dashboard" method="POST">
		<table cellpadding="0" cellspacing="0" border="0" width="83%"
			class="margin_table">

			<tr>
				<td valign="top" align="left"><div>
						
						
						<div style="margin:0px auto;width:1195px;">
						<ul class="horizmenu" style="margin-left:70px;">
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="addcustomer" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>HOME</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="product" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>PRODUCTS</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="productuse" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>PRODUCT USE</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="viewcustomers" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>BENEFITS</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="viewcustomers" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>CONTACT</span>
									
								</a>
							</li>
							<li  style=" float:left;margin-right:1px;text-transform:uppercase;width:173px;text-align:center;">
								<a href="viewcustomers" class="<c:choose>
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
						<table cellpadding="0" cellspacing="0" border="0" width="70%">
						<tr>
						<td><img src="<c:url value="/resources/images/title1.png" />" alt="Product Use" style="width:300px;"/></td>
			<td align="left">INDOOR-OUTDOOR MULTI-PURPOSE SEALANT<br>
			is a VOC complaint general purpose product.</td>
			</tr>
			</table>
			<table width="80%" style="margin-left:90px;">
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>VOC Less than15 g/l</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Available in white and bronze colors</td>
			</tr>
			
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>100% Green</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Easily Gunned in Most Temperatures</td>
			</tr>
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Easy Cleanup</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>UV and Mildew Resistant</td>
			</tr>
			
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Low order</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Will not Shrink or Crack</td>
			</tr>
			
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Solvent Free</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Weather Tight seal</td>
			</tr>
			
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Long Lasting</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Excellent Tooling</td>
			</tr>
			
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Flexible Repair</td>
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick"  width="20" height="30" /></td>
			<td>Waterproof</td>
			
			</tr>
			</table>
			</tr>
<!-- 	<table cellpadding="0" cellspacing="0" border="0" width="100%">
 -->
 <table>
 <td>
			<table width="80%" style="margin-left:90px;">
			
			<tr class="benefit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IMPROVE ENERGY EFFICIENCY</tr>
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick" width="20" height="30" /></td>
			<td>Help reduce your energy bill by sealing with WHITESEAL.</td>
			</tr>
			</table>
			
			<table width="80%" style="margin-left:90px;">
			<tr class="benefit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COVERAGE</tr>
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick" width="20" height="30" /></td>
			<td>28 linear feet using 1/4" bead or 14 linear feet using a 3/8"bead.</td>
			</tr>
			</table>
			
			<%-- 
			<table align="right">
			<td align="right" ><img src="<c:url value="/resources/images/logo.png" />" alt="logo"  /></td>
			<td align="right"><img src="<c:url value="/resources/images/whit.png" />" alt="whiteseal"  /></td>
			</table> --%>
			
		
			<table width="80%" style="margin-left:90px;">
			<tr class="benefit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SHELF LIFE</tr>
			<tr class="bene">
			<td><img src="<c:url value="/resources/images/tick.png" />" alt="tick" width="20" height="30" /></td>
			<td>Use product within 12 months from manufacturers date.<br>
				FREEZE THAW STABLE. Store product at 40ºF - 80ºF<br></td>
			
			</tr>
			</table>
			</td>
			<td></td><td></td><td></td>
			<td align="right">
			<td><img src="<c:url value="/resources/images/logo.png" />" alt="logo"  /></td>&nbsp;&nbsp;&nbsp;&nbsp; 
			<td ><img src="<c:url value="/resources/images/whit.png" />" alt="whiteseal"  /></td>
			</td>
			
			</table>
			</table>
			</div>
			</div>
			</td>
			</tr>
			</table>
			</form>
			</div>
			
			
	
	
			<%-- <div>
			<table align="right">
			<td align="right" ><img src="<c:url value="/resources/images/logo.png" />" alt="logo"  /></td>
			<td align="right"><img src="<c:url value="/resources/images/whit.png" />" alt="whiteseal"  /></td>
			</table>
	</div> --%>
	


<jsp:include page="footer.jsp"></jsp:include>
    