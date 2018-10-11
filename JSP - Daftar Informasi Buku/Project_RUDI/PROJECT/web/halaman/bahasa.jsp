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
<h1>READ DATA (DATABASE MYSQL)</h1>
<%
List<fuser> list = user.getAllRecords();
request.setAttribute("list", list);
%>
<table width="100%" id="datatable" class="display">
<thead>
    <tr>
        <th>Nama Bahasa</th>
        <th>Level</th>
       
       
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    
</thead>
<tbody>
<c:forEach items="${list}" var="u">
<tr><td>${u.getNama_bahasa()}</td>
    <td>${u.getLevel()}</td>
    <td>${u.getAlamat()}</td>
    
    <td><a href="editmember.jsp?id_member=${u.getId_member()}" onclick="return confirm('apakah anda ingin mengedit data ini ?')">Edit</a></td>
    <td><a href="deletemember.jsp?id_member=${u.getId_member()}" onclick="return confirm('apakah anda yakin ingin menghapus data ini ?')">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<br/>
<table>
    <tr>
    <td><a href="createmember.jsp">Create</a></td>
</tr>
</table>
</body>
</html>