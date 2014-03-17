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
								<c:when test="${menu=='productuse'}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
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
						
						<div class="contentbox" style="margin:0px auto; width:1035px;">	
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
						<tr>
						<td align="left" valign="top" width="100%" style="padding-right:25px;">
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
						<tr>	
			<div class="product_use">Multi-Purpose Adhesive Caulk | White Seal for use on interior / exterior surfaces<br>
			     Wood | Brick | Glass | Metal | Plaster | Drywall | Painted Surfaces</div>
		
			<div class="protext"> Curing time varies by temperature and humidity.Easy to apply, LOW VOC. 100% Green.</div>
			<div class="protext"> Help reduce your energy consumption by sealing with WHITE SEAL.</div>
						
		   <td >
				<div style="margin-left:30px;"><img src="<c:url value="/resources/images/use.png" />" alt="Product Use" /></div>
			</td>
			
			<td>
				<div style="margin-left:30px;"><img src="<c:url value="/resources/images/prod_use - Copy1.png" />" alt="Product Use" style="width:230px;margin-top:20px;"/></div> 
			</td>
			
			<td>
				<div><img src="<c:url value="/resources/images/prod_use - Copy2.png" />" alt="Product Use" style="width:220px;margin-top:20px;"/></div> 
			</td>
			
			<td>	
			<div><img src="<c:url value="/resources/images/prod_use - Copy - Copy.png" />" alt="Product Use" style="width:220px;margin-top:20px;"/></div> 
			
			</td>
		</tr>
		</table>
		</td>
		</tr>
		</table>
		</div>
		</div>
		</div>
		</td>
		</tr>
		</table>
		</form>
		</div>
<br><br><br><jsp:include page="footer.jsp"></jsp:include>     