<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %
 %  Index.jsp 
 %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="iso-8859-1"?>
<%@ include file="WEB-INF/include/common.jspf" %>
<!DOCTYPE html 
	PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"
	"DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
<title><%=pageTitle%></title>
<meta name="keywords" lang="en-us" content="Bacchus, programming, consulting, 3D, 2D, game, graphics, internet, java, Java, E-commerce, Swing, GUI, contractors, imaging" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Language" content="en-US">
<meta name="ROBOTS" content="ALL">
<!-- <meta http-equiv="Pragma" content="no-cache"> -->
<style>
<%@ include file="css/Visual.css" %>
</style>
</head>

<body onload="init()" onresize="<% if (NS4X) { %> history.go(0) <% } %>" link= "#6565bf"  vlink="#6b8e55" text="black" bgcolor="#ffffff">
	<%@ include file="WEB-INF/include/Header.jspf" %>
	<% if ( pageId == MAIN_PAGE) { %>
		<%@ include file="WEB-INF/include/Main.jspf" %>
	<% } else
	   if ( pageId == RESUME_PAGE) { %>
		<%@ include file="WEB-INF/include/Resume.jspf" %>
	<% } else 	   
	   if ( pageId == SKILLS_PAGE) { %>
		<%@ include file="WEB-INF/include/Skills.jspf" %>
	<% } else 	   
	   if ( pageId == LEGACY_PAGE) { %>
		<%@ include file="WEB-INF/include/Legacy.jspf" %>
	<% } else 	   
	   if ( pageId == CONTACT_PAGE) { %>
		<%@ include file="WEB-INF/include/Contact.jspf" %>
	<% } %>
</body>
</html>


 