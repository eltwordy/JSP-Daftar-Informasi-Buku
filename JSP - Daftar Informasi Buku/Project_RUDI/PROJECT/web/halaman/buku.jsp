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
<h1><FONT COLOR="LIGHTBLUE">INFORMASI BUKU</FONT></h1>
<%
List<fbuku> list = buku.getAllRecords();
request.setAttribute("list", list);
%>
<table width="100%" id="datatable" class="display" border="1">
<thead>
    <tr>
        <th>Kode Buku</th>
        <th>Judul</th>
        <th>Bahasa</th>
        <th>Sinopsis</th>
<!--        <th>Kode Pengarang</th>
        <th>Kode Penerbit</th> -->
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    
</thead>
<tbody>
<c:forEach items="${list}" var="u">
<tr><td>${u.getKodeBuku()}</td>
    <td>${u.getJudul()}</td>
    <td>${u.getBahasa()}</td>
    <td>${u.getSinopsis()}</td>
<!--    <td>${u.getKodePengarang()}</td>
    <td>${u.getKodePenerbit()}</td>-->
    <td><a href="editbuku.jsp?kodeBuku=${u.getKodeBuku()}" >Edit</a></td>
    <td><a href="deletebuku.jsp?kodeBuku=${u.getKodeBuku()}" onclick="return confirm('apakah anda yakin ingin menghapus data ini ?')">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<br/>
<table>
    <tr>
    <td><a href="createbuku.jsp">Create</a></td>
</tr>
</table>
</body>
</html>