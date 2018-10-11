<!--Document   : proseslogin
    Created on : 01-Nov-2016, 06:02:42
    Author     : Rudi Hidayat-->
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<%@page import="function.login"%>  
<jsp:useBean id="obj" class="function.flogin" /> 
<jsp:setProperty property="*" name="obj" />
<%  
    boolean status=login.validate(obj);   
    if(status){  
        out.println("Your successfully logged in");   
        session.setAttribute("session","TRUE"); 
%>
        <jsp:forward page="menu.jsp" /> 
        <% 
    }   else   {  
        out.print("<center><b>Sorry, email or password error</b></center>");  
        %>  
        <jsp:include page="index.jsp" /> 
        <% 
    }
    %> 