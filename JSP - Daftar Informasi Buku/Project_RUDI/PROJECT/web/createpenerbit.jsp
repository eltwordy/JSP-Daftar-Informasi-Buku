<%-- 
    Document   : create
    Created on : Dec 20, 2016, 11:22:27 AM
    Author     : Rudi
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" media="screen" href="halaman/tampilan.css">
<title>INPUT DATA</title>
</head>
<body>
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
<h3>INPUT DATA</h3>
<hr>
<form action="prosesinputpenerbit.jsp" method="post">
<table width="500px" border="5">
<tr>
<td width="120px">Kode Penerbit</td><td><input type="text"name="kodePenerbit"></td>
</tr>
<td width="120px">Penerbit</td><td><input type="text"name="penerbit"></td>
</tr>
<tr>
<td width="120px">Alamat</td><td><input type="text"name="alamat"></td>
</tr>
<tr>
<td></td><td><input type="submit" name="proses" value="Proses"></td>
</tr>
</table>
</div>
</form>
</body>
</html>
