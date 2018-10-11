/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Rudi
 */
public class pengarang_1 {

public static List<fpengarang_1> getAllRecords(){
List<fpengarang_1> list=new ArrayList<fpengarang_1>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from pengarang");
ResultSet rs=ps.executeQuery();
while(rs.next()){
fpengarang_1 u1=new fpengarang_1();
u1.setKodePengarang(rs.getString("kodePengarang"));
u1.setPengarang(rs.getString("pengarang"));
list.add(u1);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static int update(fpengarang_1 u1) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("update pengarang set pengarang=? where kodePengarang=?");
ps.setString(1, u1.getPengarang());
ps.setString(2, u1.getKodePengarang());
status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}


public static fpengarang_1 getRecordById(String kd) {
fpengarang_1 u1 = null;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("select * from pengarang where kodePengarang=?");
ps.setString(1, kd);
ResultSet rs = ps.executeQuery();
while (rs.next()) {
u1 = new fpengarang_1();
u1.setKodePengarang(rs.getString("kodePengarang"));
u1.setPengarang(rs.getString("pengarang"));
}
} catch (Exception e) {
System.out.println(e);
}
return u1;
}

public static int delete(fpengarang_1 u1) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("delete from pengarang where kodePengarang=?");
ps.setString(1, u1.getKodePengarang());
status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}


public static int save(fpengarang_1 gt) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("insert into pengarang(kodePengarang,pengarang) values (?,?)");
ps.setString(1, gt.getKodePengarang());
ps.setString(2, gt.getPengarang());

status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}
}

