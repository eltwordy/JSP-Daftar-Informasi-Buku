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
<title>INPUT DATA</title>
</head>
<body>
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
<td width="120px">ALAMAT</td><td><input type="text"name="alamat"></td>
</tr>

<tr>
<td></td><td><input type="submit" name="proses" value="Proses"></td>
</tr>
</table>
</form>
</body>
</html>
