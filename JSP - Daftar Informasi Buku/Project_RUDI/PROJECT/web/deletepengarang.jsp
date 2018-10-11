<%@page import="javax.swing.JOptionPane"%>
<%@page import="function.pengarang"%>
<jsp:useBean id="u" class="function.fpengarang"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=pengarang.delete(u);
if(i>0){ %>
    <script>
           alert("Berhasil Dihapus");
           location="menu.jsp?folder=halaman&file=pengarang.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Gagal");
              location="menu.jsp?folder=halaman&file=pengarang.jsp";
    </script>
   <%     }
%>

