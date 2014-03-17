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
								<a href="contacts" class="<c:choose>
								<c:when test="${menu==''}">select</c:when><c:otherwise>unselect</c:otherwise></c:choose>">
									<span>CONTACT</span>
									
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

	           <div class="contentbox" style="margin:0px auto; width:1035px; height:470px;">
	        <table><tr><td valign="top">   
	                           
			<div style="margin-left:70px;"><img src="<c:url value="/resources/images/1.png" />" alt="order now" /></div> </td>
			<td><br><br><br><br>
			<p><h1 class = "on">&nbsp;ONLINE ORDERING
			<br>&nbsp;&nbsp;AVAILABLE SOON !</br></h1></p>
                     <p align = "center" class = "od">Please call your WHITE SEAL
                    <br> representative for product
                   <br> information, pricing quantities
                    <br>and all orders.</p> 
                     <h1 class="no">1(888)959-8156
                      </h1>
                     </td>
           
                     <td>
                     <table><tr><td width = "50"></td>
                     <%-- 
                     <td >
                 
			<div><img src="<c:url value="/resources/images/2.png" />" alt="order now" /></div> </td> --%>
			<td valign ="center">
			<div style="margin-left:-50px;"><img src="<c:url value="/resources/images/orderpage.png" />" alt="order now" /></div> </td></tr></table>
			<table>
			</table>
                     </tr></table>
                     <table><tr><td><p class= "oo">Product is currently only for sale and distribution in the United states<br/>
                     Excluding Alaska and Hawaii</p></td>
 
                    
                     </table>
                     </div>
                     </div>
                     
                     </div>
					 
						
						
			</div></table>			
						
<jsp:include page="footer.jsp"></jsp:include>
						