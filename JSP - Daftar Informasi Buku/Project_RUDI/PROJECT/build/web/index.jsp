<%-- 
    Document   : index
    Created on : 31-Oct-2016, 21:36:37
    Author     : Rudi Hidayat
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>FORM LOGIN</title></head> 
<body>         
    <%               
        String login_msg=(String)request.getAttribute("login_msg");               
    if(login_msg!=null){               
        out.print(login_msg);              
    }           
    %>      
    <link rel="stylesheet" type="text/css" media="screen" href="halaman/tampilan.css">
    <form action="proseslogin.jsp" method="post">            
        <font color="white"><center><h1>SELAMAT DATANG</h1></center></font>        
        <hr />
        
        <div id="header">Halaman Login</div>
<!-- Menu -->
<div id="konten">
        <table align="center">             
            <tr>                    
                <td width="100px">Username</td>
                <td><input type="text" name="username" placeholder="input username anda" required /></td>             
            </tr>            
            <tr>                 
                <td>Password</td>
                <td><input type="password" name="password" placeholder="input password anda" required /></td>          
            </tr>        
            <tr>              
                <td></td>
                <td><input type="submit" name="submit" value="Login" /></td>        
            </tr>     
        </table>    
</div>
        <hr />        
    </form>     
</body> 
</html> 