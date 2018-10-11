<%-- 
    Document   : create
    Created on : Dec 20, 2016, 11:22:27 AM
    Author     : Rudi
--%>

<%@page import="java.util.List"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="function.penerbit,function.fpenerbit"%>
<%@page import="function.pengarang_1,function.fpengarang_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" media="screen" href="halaman/tampilan.css">

<title>INPUT DATA</title>
</head>
<body>
<%@page import="function.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="function.penerbit,function.fpenerbit"%>
<%@page import="function.pengarang_1,function.fpengarang_1"%>
<%
String kd = request.getParameter("kodePenerbit");
fpenerbit u = penerbit.getRecordById(kd);
List<fpenerbit> listPenerbit=penerbit.getAllRecords();
request.setAttribute("listPenerbit", listPenerbit);

String ka = request.getParameter("kodePengarang");
fpengarang_1 u1 = pengarang_1.getRecordById(ka);
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

</ul>
</div>
<div id="konten">
<h3>INPUT DATA</h3>
<hr>
<form action="prosesinputbuku.jsp" method="post">
<table width="500px" border="5">
<tr>
<td width="120px">Kode Buku</td><td><input type="text"name="kodeBuku"></td>
</tr>
<td width="120px">Judul</td><td><input type="text"name="judul"></td>
</tr>
<tr>
<td width="120px">Bahasa</td><td><input type="text"name="bahasa"></td>
</tr>
<tr>
<td width="120px">Sinopsis</td><td><input type="text"name="sinopsis"></td>
</tr>
<td>Kode Penerbit:</td>
    <td>
        <select name="kodePenerbit">
            <c:forEach items="${listPenerbit}" var="p">
                <option value="${p.getKodePenerbit()}">${p.getKodePenerbit()}</option>
            </c:forEach>
        </select>
    </td>  
<tr>
<td>Kode Pengarang:</td>
    <td>
        <select name="kodePengarang">
            <c:forEach items="${listPengarang_1}" var="p">
                <option value="${p.getKodePengarang()}">${p.getKodePengarang()}</option>
            </c:forEach>
        </select>
    </td>  
<tr>


<tr>
<td></td><td><input type="submit" name="proses" value="Proses"></td>
</tr>
</table>
</div>
</form>
</body>
</html>
