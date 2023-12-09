<title>loggingout</title>
<%
    session.removeAttribute("uname");
    session.invalidate();
    out.println("<script>alert('logout successfully');document.location='index.jsp';</script>");
%>