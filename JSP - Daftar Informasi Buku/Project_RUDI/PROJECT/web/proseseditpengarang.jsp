<%-- 
    Document   : prosesedit
    Created on : Dec 12, 2016, 8:52:26 PM
    Author     : Rudi
--%>
<%@page import="function.pengarang"%>
<jsp:useBean id="u" class="function.fpengarang"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%--
int i=pengarang.update(u);
response.sendRedirect("menu.jsp?folder=halaman&file=pengarang.jsp");
--%>

<%
int i=pengarang.update(u);
if(i>0){ 
%>
    <script>
           alert("Data Berhasil di Ubah");
           location="menu.jsp?folder=halaman&file=pengarang.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Data Gagal di Ubah");
              location="menu.jsp?folder=halaman&file=pengarang.jsp";
    </script>
   <%     }
%>