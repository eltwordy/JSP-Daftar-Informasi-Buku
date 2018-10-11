/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import function.fpenerbit;
/**
 *
 * @author Rudi
 */
public class penerbit {

public static List<fpenerbit> getAllRecords(){
List<fpenerbit> list=new ArrayList<fpenerbit>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from penerbit");
ResultSet rs=ps.executeQuery();
while(rs.next()){
fpenerbit u=new fpenerbit();
u.setKodePenerbit(rs.getString("kodePenerbit"));
u.setPenerbit(rs.getString("penerbit"));
u.setAlamat(rs.getString("alamat"));
list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static int update(fpenerbit u) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("update penerbit set penerbit=?,alamat=? where kodePenerbit=?");
ps.setString(1, u.getPenerbit());
ps.setString(2, u.getAlamat());
ps.setString(3, u.getKodePenerbit());
status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}


public static fpenerbit getRecordById(String id) {
fpenerbit u = null;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("select * from penerbit where kodePenerbit=?");
ps.setString(1, id);
ResultSet rs = ps.executeQuery();
while (rs.next()) {
u = new fpenerbit();
u.setKodePenerbit(rs.getString("kodePenerbit"));
u.setPenerbit(rs.getString("penerbit"));
u.setAlamat(rs.getString("alamat"));
}
} catch (Exception e) {
System.out.println(e);
}
return u;
}

public static int delete(fpenerbit u) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("delete from penerbit where kodePenerbit=?");
ps.setString(1, u.getKodePenerbit());
status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}


public static int save(fpenerbit gt) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("insert into penerbit(kodePenerbit,penerbit,alamat) values (?,?,?)");
ps.setString(1, gt.getKodePenerbit());
ps.setString(2, gt.getPenerbit());
ps.setString(3, gt.getAlamat());

status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}
}

