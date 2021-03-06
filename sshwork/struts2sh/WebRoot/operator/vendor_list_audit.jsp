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

<!-- 页面主体 -->



<TABLE border="1"  cellpadding="0" style="border-collapse: collapse; " bordercolor="#000000" width=760 align=center >
  <TBODY>
    <TR>
      <TD colspan="6"align="center">
      <font color=green size=5>${message}</font><br>
      <span class="STYLE6">${title}</span></TD>
    </TR>
	<tr bgcolor="gold" style="font-weight:bold">
	  <td>公司名</td>
	  <td>分类</td>
	  <td>网站地址</td>
	  <td>详细地址</td>
	  <td>注册时间</td>
	  <td>审核</td>
    </tr>
 <c:forEach items="${vendors}" var="vendor" >
  <tr>
  <td><a href="vendor/findById.action?id=${vendor.id}">${vendor.name}</a></td>
  <td>${vendor.catalog}</td>
  <td><a href="${vendor.website}">${vendor.website}</a></td>
  <td>${vendor.address}</td>
  <td>${vendor.regDate}</td>
  <td><c:if test="${vendor.audited == false}"><a href="vendor/audit_by_id.action?id=${vendor.id}" target="_approve">批准</a></c:if></td>
  </tr>
  </c:forEach>	 
  </TBODY>
</TABLE>


<!-- 底部页面开始 -->
<%@ include file="../inc_foot.jsp" %>
<!-- 底部页面结束 -->
</BODY>
</HTML>
