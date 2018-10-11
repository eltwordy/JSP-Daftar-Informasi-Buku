<%-- 
    Document   : index
    Created on : 08-Nov-2016, 15:08:33
    Author     : Rudi Hidayat
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>INFORMASI BUKU</title>
<link rel="stylesheet" type="text/css" media="screen" href="halaman/tampilan.css">
</head>
<body>
<!-- header -->
<div id="header">DAFTAR INFORMASI BUKU</div>
<!-- Menu -->
<div id="menu">
<ul>
<li><a href="menu.jsp">Home</a></li>
<li><a href="menu.jsp?folder=halaman&file=penerbit.jsp">Penerbit</a></li>
<li><a href="menu.jsp?folder=halaman&file=pengarang_1.jsp">Pengarang</a></li>
<li><a href="menu.jsp?folder=halaman&file=buku.jsp">Buku</a></li>
<li><a href="menu.jsp?folder=halaman&file=pengarang.jsp">Details</a></li>
<li><a href="menu.jsp?folder=halaman&file=biodata.jsp">About</a></li>
<li>   <a href="index.jsp">Logout</a></li>
<!--<li><a href="menu.jsp?folder=halaman&file=logout.jsp">Logout</a></li>-->

</ul>
</div>
<div id="konten">
<%
if (request.getParameter("folder")!=null) {
String dataFile = request.getParameter("folder")+"/"+request.getParameter("file");
File file = new File(request.getServletContext().getRealPath(dataFile));
if (file.exists()) { %>
<jsp:include page="<%=dataFile%>" />
<% } else { %>
<jsp:include page="halaman/home.jsp" />

<% }
} else {
%>
<jsp:include page="halaman/home.jsp" />
<%
}
%>
</div>
<br />
<div id="footer">Copyright &copy; <a href="http://hidayatrudi.blogspot.com" target="_blank"
style="color:#FFF">Rudi Hidayat TI2014C - Fakultas Ilmu Komputer - Universitas
Kuningan</a></div>
</body>
</html>