<%-- 
    Document   : index
    Created on : Dec 12, 2016, 8:35:05 PM
    Author     : Rudi
--%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>READ DATA (DATABASE MYSQL)</title>
<!-- untuk datatable -->
<link rel="stylesheet" type="text/css"
href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.
css">
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript">
$(document).ready(function() {
$('#datatable').DataTable();
});
</script>
</head>
<body>
<%@page import="function.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1><FONT COLOR="LIGHTBLUE">DATA INFORMASI LENGKAP BUKU</font></h1>
<%
List<fpengarang> list = pengarang.getAllRecords();
request.setAttribute("list", list);
%>
<table width="100%" id="datatable" class="display" border="1">
<thead>
    <tr>
        <th>Judul Buku</th>
        <th>Bahasa</th>
        <th>Sinopsis</th>
        <th>Pengarang</th>
        <th>Penerbit</th>   
        <th>Alamat</th>
<!--        <th>Edit</th>
        <th>Delete</th>-->
    </tr>
    
</thead>
<tbody>
<c:forEach items="${list}" var="u">
<tr>
    <td>${u.getJudul()}</td>
    <td>${u.getBahasa()}</td>
    <td>${u.getSinopsis()}</td>
    <td>${u.getPengarang()}</td>
    <td>${u.getPenerbit()}</td>
    <td>${u.getAlamat()}</td>
<!--    <td><a href="editpengarang.jsp?kodePengarang=${u.getKodePengarang()}" >Edit</a></td>
    <td><a href="deletepengarang.jsp?kodePengarang=${u.getKodePengarang()}" onclick="return confirm('apakah anda yakin ingin menghapus data ini ?')">Delete</a></td>-->
</tr>
</c:forEach>
</tbody>
</table>
<br/>
<!--<table>
    <tr>
    <td><a href="createpengarang.jsp">Create</a></td>
</tr>
</table>-->
</body>
</html>