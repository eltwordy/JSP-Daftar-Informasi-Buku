<%-- 
    Document   : prosesedit
    Created on : Dec 12, 2016, 8:52:26 PM
    Author     : Rudi
--%>

<%@page import="function.pengarang_1"%>
<jsp:useBean id="u" class="function.fpengarang_1"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=pengarang_1.update(u);
if(i>0){ %>
    <script>
           alert("Data Berhasil di Ubah");
           location="menu.jsp?folder=halaman&file=pengarang_1.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Data Gagal di Ubah");
              location="menu.jsp?folder=halaman&file=pengarang_1.jsp";
    </script>
   <%     }
%>