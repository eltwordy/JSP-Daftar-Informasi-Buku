/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;
/**
 *
 * @author Rudi Hidayat
 */
import java.sql.*;
public class koneksi {
 public static Connection getKoneksi(){
Connection con=null;
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/daftarbuku","root","");
}
catch(Exception e){System.out.println(e);}
return con;
 }
}

