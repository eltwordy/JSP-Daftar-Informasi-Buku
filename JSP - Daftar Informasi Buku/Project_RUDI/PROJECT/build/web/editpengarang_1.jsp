<%-- 
    Document   : editform
    Created on : Dec 12, 2016, 8:51:18 PM
    Author     : Rudi
--%>


<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" media="screen" href="halaman/tampilan.css">
<title>Edit Form</title>
</head>
<body>
<%@page import="function.pengarang_1,function.fpengarang_1"%>
<%
String kd1 = request.getParameter("kodePengarang");
fpengarang_1 u1 = pengarang_1.getRecordById(kd1);
List<fpengarang_1> listPengarang_1=pengarang_1.getAllRecords();
request.setAttribute("listPengarang_1", listPengarang_1);
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
<form action="proseseditpengarang_1.jsp" method="post">
<input type="hidden" name="kodePengarang" value="<%=u1.getKodePengarang()%>"/>
<table>
<tr>
    <td>Nama Pengarang:</td>
    <td><input type="text" name="pengarang" value="<%=u1.getPengarang()%>"/></td>

</tr>
<tr><td colspan="2"><input type="submit" value="Simpan"/></td></tr>
</table>
</div>
</form>
</body>
</html>
