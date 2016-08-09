<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %
 %  Download_PMIA.jsp
 %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>


<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>


<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %
 %  Java preprocessing
 %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>

<%
	String name  = request.getParameter("name");
	String email = request.getParameter("email");
	String title = request.getParameter("title");
	String org	 = request.getParameter("organization");
	String subject = "PM/IA Website Download";
	String errorURL = "http://www.bacchus.com/pm_ia/error.html";
	String downloadURL = "http://www.bacchus.com/pm_ia/PM-IA.tar.gz";

	if ( name.length() == 0 || email.length() == 0 ) 
		response.sendRedirect(errorURL);
	else {
		// start download
		response.sendRedirect(downloadURL);

		// send email 
		String to = "support@bacchus.com";
		String from = "support@bacchus.com";
		String host = "mail.kattare.com";

		Properties p = new Properties();
		p.put("mail.smtp.host", host);
		Session s = Session.getDefaultInstance(p, null);

		try {
			Message m = new MimeMessage(s);
			m.setFrom(new InternetAddress(from));
			InternetAddress addr = new InternetAddress(to);
			m.setRecipient(Message.RecipientType.TO, addr);
			m.setSubject(subject);
			m.setText("Name: " + name + "\n" + "E-mail: " +  email + "\n" + "Title: " 
				 + title + "\n" + "Organization: " + org);
			Transport.send(m);
		} 
		catch ( MessagingException me ) {
			me.printStackTrace();
			System.err.println("PM-IA Download: Exception while sending e-mail to:" + to);
		}
	}
%>


<%--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %
 %  HTML Body
 %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%--%>





