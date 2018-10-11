<%-- 
    Document   : biodata
    Created on : 08-Nov-2016, 15:24:11
    Author     : Rudi Hidayat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link rel="stylesheet" type="text/css"
href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.
css">
<center>
    <h2><font color="white">
<% out.println("BIODATA ! <br/>"); %>
    </h2></font>


<table width="40%" id="datatable" class="display" border="1">
    
<thead>
    <tr align="left" >
        <th bgcolor="white" width="80">NIM</th>
        <th bgcolor="white">2014081101</th>
    </tr>
       <tr align="left">
        <th bgcolor="grey">Nama</th>
        <th bgcolor="grey">Rudi Hidayat</th>
    </tr>
       <tr align="left">
        <th bgcolor="white">Alamat</th>   
        <th bgcolor="white">RT.008/ RW.002 Desa Sindang 
            Kecamatan Lebakwangi Kabupaten Kuningan</th>
    </tr>
    <tr align="left">
        <th bgcolor="grey">Prodi</th>
        <th bgcolor="grey">Teknik Informatika</th>
    </tr>
    <tr align="left">
        <th bgcolor="white">Kelas</th>
       <th bgcolor="white">TI2014C</th>
    </tr>
   <tr align="left">
       <th bgcolor="grey">No. Hp</th>
       <th bgcolor="grey">089654621349</th>
    </tr>
    
</thead>
</table>
</center>
    </body>
</html>
