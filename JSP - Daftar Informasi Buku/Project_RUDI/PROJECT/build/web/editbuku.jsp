<%-- 
    Document   : editform
    Created on : Dec 12, 2016, 8:51:18 PM
    Author     : Rudi
--%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="halaman/tampilan.css">
<title>Edit Form</title>
</head>
<body>
<%@page import="function.buku,function.fbuku"%>
<%
String kd = request.getParameter("kodeBuku");
fbuku u = buku.getRecordById(kd);
%>
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

<h1>Edit Form</h1>
<form action="proseseditbuku.jsp" method="post">
<input type="hidden" name="kodeBuku" value="<%=u.getKodeBuku()%>"/>

    <table>
<tr><td><input type="hidden" name="kodeBuku" value="<%=u.getKodeBuku()%>"/></td></tr>
<tr><td>Judul:</td><td><input type="text" name="judul" value="<%=u.getJudul()%>"/></td></tr>
<tr><td>Bahasa:</td><td><input type="text" name="bahasa" value="<%=u.getBahasa()%>"/></td></tr>
<tr><td>Sinopsis</td><td><input type="text" name="sinopsis" value="<%=u.getSinopsis()%>"/></td></tr>
<input type="hidden" name="kodePengarang" value="<%=u.getKodePengarang()%>"/></td></tr>
<input type="hidden" name="kodePenerbit" value="<%=u.getKodePenerbit()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Simpan"/></td></tr>
</table>
</div>
</form>
</body>
</html>
