<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addProduct.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <s:form action="updateProduct">
    <s:hidden name="product.pid" value="product.pid"></s:hidden>
       <s:textfield label="名字" name="product.pname"></s:textfield>
       <s:textfield label="描述" name="product.pdesc"></s:textfield>
       <s:textfield label="开始时间" name="product.pbegin_date"></s:textfield>
       <s:textfield label="结束时间" name="product.pend_date"></s:textfield>
       <s:textfield label="起拍价" name="product.pstart_price"></s:textfield>
       <s:submit value="提交"></s:submit>
    </s:form>
  </body>
</html>
