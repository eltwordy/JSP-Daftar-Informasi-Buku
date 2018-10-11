<%-- 
    Document   : prosesinputbuku
    Created on : 14-Nov-2016, 23:25:01
    Author     : Rudi Hidayat
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="function.buku"%>
<jsp:useBean id="u" class="function.fbuku"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=buku.save(u);
if(i>0){
out.print("<center><b>Input data berhasil !</b></center>");
}else{
out.print("<center><b>Input data gagal !</b></center>");
}
%>
<jsp:include page="menu.jsp?folder=halaman&file=buku.jsp"/>