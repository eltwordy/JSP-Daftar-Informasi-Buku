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
public class login {

 public static boolean validate(flogin gt){
 boolean status=false;
 try{
 Connection con=koneksi.getKoneksi();
 PreparedStatement ps=con.prepareStatement("select * from `user` where username=? AND password=?"); 
 ps.setString(1,gt.getUsername());
 ps.setString(2,gt.getPassword());
 ResultSet rs=ps.executeQuery();
 status=rs.next();
 System.out.println(gt.getPassword());
 } catch(Exception e){ System.out.println(e); }
 return status;
 }
}
