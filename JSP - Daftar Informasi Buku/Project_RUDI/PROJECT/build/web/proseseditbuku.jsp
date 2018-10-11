<%-- 
    Document   : prosesedit
    Created on : Dec 12, 2016, 8:52:26 PM
    Author     : Rudi
--%>
<%@page import="function.buku"%>
<jsp:useBean id="u" class="function.fbuku"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%--
int i=buku.update(u);
response.sendRedirect("menu.jsp?folder=halaman&file=buku.jsp");
--%>

<%
int i=buku.update(u);
if(i>0){ 
%>
    <script>
           alert("Data Berhasil di Ubah");
           location="menu.jsp?folder=halaman&file=buku.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Data Gagal di Ubah");
              location="menu.jsp?folder=halaman&file=buku.jsp";
    </script>
   <%     }
%>