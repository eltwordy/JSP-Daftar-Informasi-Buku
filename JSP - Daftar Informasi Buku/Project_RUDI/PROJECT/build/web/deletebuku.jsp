<%@page import="javax.swing.JOptionPane"%>
<%@page import="function.buku"%>
<jsp:useBean id="u" class="function.fbuku"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=buku.delete(u);
if(i>0){ %>
    <script>
           alert("Berhasil Dihapus");
           location="menu.jsp?folder=halaman&file=buku.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Gagal");
              location="menu.jsp?folder=halaman&file=buku.jsp";
    </script>
   <%     }
%>

