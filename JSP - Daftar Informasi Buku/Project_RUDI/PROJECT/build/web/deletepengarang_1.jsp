<%@page import="javax.swing.JOptionPane"%>
<%@page import="function.pengarang_1"%>
<jsp:useBean id="u" class="function.fpengarang_1"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=pengarang_1.delete(u);
if(i>0){ %>
    <script>
           alert("Berhasil Dihapus");
           location="menu.jsp?folder=halaman&file=pengarang_1.jsp";
    </script>
  <% } else { %>
    <script>
            alert("Gagal");
              location="menu.jsp?folder=halaman&file=pengarang_1.jsp";
    </script>
   <%     }
%>

