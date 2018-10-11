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
<%@page import="function.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="function.penerbit,function.fpenerbit"%>
<%
String kd = request.getParameter("kodePenerbit");
fpenerbit u = penerbit.getRecordById(kd);
List<fpenerbit> listPenerbit=penerbit.getAllRecords();
request.setAttribute("listPenerbit", listPenerbit);
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
<form action="proseseditpenerbit.jsp" method="post">
<input type="hidden" name="kodePenerbit" value="<%=u.getKodePenerbit()%>"/>
<table>
<tr>
    <td>Nama Penerbit:</td>
    <td>
        <select name="penerbit">
            <c:forEach items="${listPenerbit}" var="p">
                <option value="${p.getPenerbit()}">${p.getPenerbit()}</option>
            </c:forEach>
        </select>
    </td>
</tr>
<tr><td>Alamat:</td><td><input type="text" name="alamat" value="<%=u.getAlamat()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Simpan"/></td></tr>
</table>
</div>
</form>
</body>
</html>
