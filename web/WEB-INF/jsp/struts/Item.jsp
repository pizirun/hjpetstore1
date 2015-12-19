<%@ include file="IncludeTop.jsp" %>

<table align="left" bgcolor="#008800" border="0" cellspacing="2" cellpadding="2">
  <tr><td bgcolor="#FFFF88">
      <a href="<c:url value="/shop/viewProduct.do">
           <c:param name="productNumber" value="${product.productNumber}"/>
         </c:url>">
        <b><font color="BLACK" size="2">&lt;&lt; 
        <c:out value="${product.productName}"/></font></b>
      </a>
  </td></tr>
</table>

<p>

<table align="center" bgcolor="#008800" cellspacing="2" cellpadding="3" border="0" width="60%">
  <tr bgcolor="#FFFF88">
    <td bgcolor="#FFFFFF">
      <c:out value="${product.productDesc}" escapeXml="false"/>
    </td>
  </tr>
  <tr bgcolor="#FFFF88">
    <td width="100%" bgcolor="#cccccc">
      <b><c:out value="${item.itemName}"/></b>
    </td>
  </tr><tr bgcolor="#FFFF88">
    <td>
      <b><font size="4">
          <c:out value="${item.attr1}"/>
          <c:out value="${item.attr2}"/>
          <c:out value="${item.attr3}"/>
          <c:out value="${item.attr4}"/>
          <c:out value="${item.attr5}"/>
          <c:out value="${product.productName}"/>
      </font></b>
  </td></tr>
  <tr bgcolor="#FFFF88"><td>
      <font size="3"><i><c:out value="${product.productName}"/></i></font>
  </td></tr>
  <tr bgcolor="#FFFF88"><td>
      <c:if test="${item.quantity <= 0}">
        <font color="RED" size="2"><i>Back ordered.</i></font>
      </c:if>
      <c:if test="${item.quantity > 0}">
        <font size="2"><fmt:formatNumber value="${item.quantity}"/> in stock.</font>
      </c:if>
  </td></tr>
  <tr bgcolor="#FFFF88"><td>
      <fmt:formatNumber value="${item.listPrice}" pattern="$#,##0.00" />
  </td></tr>
  
  <tr bgcolor="#FFFF88"><td>
      <%-- prevent duplicat submit --%>
        <html:link paramId="workingItemName" paramName="item" paramProperty="itemName" 
                   page="/shop/addItemToCart.do" transaction="true">
          <img border="0" src="../images/button_add_to_cart.gif" />
        </html:link>
        
      <%--
      <a href="<c:url value="/shop/addItemToCart.do">
        <c:param name="workingItemName" value="${item.itemName}"/>
      </c:url>">
        <img border="0" src="../images/button_add_to_cart.gif"/>
      </a>
      --%>
  </td></tr>
</table>

<%@ include file="IncludeBottom.jsp" %>
