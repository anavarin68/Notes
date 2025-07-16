<!-- Code Start for(This page will not be open without login -->
<%
UserDetails user1 = (UserDetails) session.getAttribute("UserD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login First!!..");
}
%>


<%@ include file="all_components/allcss.jsp"%>
<title>Show Notes</title>
<%@ include file="all_components/navbar.jsp"%>
<%@ include file="all_components/footer.jsp"%>