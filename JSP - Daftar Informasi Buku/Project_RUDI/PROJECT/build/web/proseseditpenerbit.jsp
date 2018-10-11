<%-- 
    Document   : prosesedit
    Created on : Dec 12, 2016, 8:52:26 PM
    Author     : Rudi
--%>

<%@page import="function.penerbit"%>
<jsp:useBean id="u" class="function.fpenerbit"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=penerbit.update(u);
if(i>0){ %>
    <script>
           alert("Data Berhasil di Ubah");
           location="menu.jsp?folder=halaman&file=penerbit.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Data Gagal di Ubah");
              location="menu.jsp?folder=halaman&file=penerbit.jsp";
    </script>
   <%     }
%>