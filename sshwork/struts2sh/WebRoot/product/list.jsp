<%@ page  pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%-- 包含标签库 --%>
<%@ include file="../inc_taglib.jsp" %>
<HTML>
<HEAD>
<!-- JS, CSS, BASE 标记等 -->
<%@ include file="../inc_resources.jsp" %>

<TITLE>${appConfig.appTitle} - ${title}</TITLE>

</HEAD>
<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
<!-- 头部页面开始 -->
<%@ include file="../inc_head.jsp" %>
<!-- 头部页面结束 -->

<p class="h1" align="center">${title}</p>

<!-- 页面主体 -->
${pageBean.javaScriptJumpCode}

<TABLE border="1"  cellpadding="0" style="border-collapse: collapse; " bordercolor="#000000" width=760 align=center >
  <TBODY>
    <TR>
      <TD colspan="6"align="center">
      <font color=green size=5>${message}</font><br>
      共 ${pageBean.recordCount} 件商品 ${pageBean.pageCountHtml } 每页显示 ${pageBean.pageCount } 件

${pageBean.pageJumpLinkHtml }
${pageBean.pageFormJumpHtml }
      </TD>
    </TR>
	<tr bgcolor="gold" style="font-weight:bold">
	  <td>产品名</td>
	  <td>分类</td>
	  <td>供应商</td>
	  <td>原价</td>
	  <td>打折</td>
	  <td>库存</td>
    </tr>
 <c:forEach items="${products}" var="product" >
  <tr>
  <td><a href="product/findById.action?id=${product.id}" target="_blank">${product.name}</a>
    折扣价:${product.rebate*product.price}
    <c:if test="${product.photo != null}"><br><a href=".${product.photo}" target="viewphoto" title="点击查看原始尺寸图片">      <img border="0" src=".${product.photo}" width="64" height="64" >
        </a>      </c:if></td>
  <td>${product.catalog}</td>
  <td><a href="vendor/findById.action?id=${product.vendor.id}" target="_blank">${product.vendor.name}</a><br>所在地:${product.vendor.address}</td>
  <td>${product.price}元</td>
  <td>${product.rebate}</td>
  <td>${product.amount} 件 <c:if test="${ product.amount > 0}"><img src="./images/icart.gif" alt="添加到购物车" width="19" height="15" style="cursor:pointer"
  onClick="ajaxAddProduct(${product.id})"></c:if></td>
  </tr>
  </c:forEach>
  
    <TR>
      <TD colspan="6"align="center">
            共 ${pageBean.recordCount} 件商品 ${pageBean.pageCountHtml} 每页显示 ${pageBean.pageCount } 件

${pageBean.pageJumpLinkHtml }

      </TD>
    </TR>  
  </TBODY>
</TABLE>






<!-- 底部页面开始 -->
<%@ include file="../inc_foot.jsp" %>
<!-- 底部页面结束 -->
</BODY>
</HTML>
