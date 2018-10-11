<%@page import="javax.swing.JOptionPane"%>
<%@page import="function.penerbit"%>
<jsp:useBean id="u" class="function.fpenerbit"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=penerbit.delete(u);
if(i>0){ %>
    <script>
           alert("Berhasil Dihapus");
           location="menu.jsp?folder=halaman&file=penerbit.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Gagal");
              location="menu.jsp?folder=halaman&file=penerbit.jsp";
    </script>
   <%     }
%>

