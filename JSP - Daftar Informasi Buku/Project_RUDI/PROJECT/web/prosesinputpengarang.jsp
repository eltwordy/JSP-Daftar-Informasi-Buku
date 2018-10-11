<%-- 
    Document   : prosesinputpengarang
    Created on : 14-Nov-2016, 23:25:01
    Author     : Rudi Hidayat
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="function.pengarang"%>
<jsp:useBean id="u" class="function.fpengarang"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=pengarang.save(u);
if(i>0){
out.print("<center><b>Input data berhasil !</b></center>");
}else{
out.print("<center><b>Input data gagal !</b></center>");
}
%>
<jsp:include page="menu.jsp?folder=halaman&file=pengarang.jsp"/>