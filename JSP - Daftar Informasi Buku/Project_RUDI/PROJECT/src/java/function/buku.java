/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import function.fbuku;
/**
 *
 * @author Rudi
 */
public class buku {

public static List<fbuku> getAllRecords(){
List<fbuku> list=new ArrayList<fbuku>();

try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select kodeBuku,judul,bahasa,sinopsis from buku");
ResultSet rs=ps.executeQuery();
while(rs.next()){
fbuku u=new fbuku();
u.setKodeBuku(rs.getString("kodeBuku"));
u.setJudul(rs.getString("judul"));
u.setBahasa(rs.getString("bahasa"));
u.setSinopsis(rs.getString("sinopsis"));
//u.setKodePengarang(rs.getString("kodePengarang"));
//u.setKodePenerbit(rs.getString("kodePenerbit"));

list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static int update(fbuku u) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("update buku set judul=?,bahasa=?,sinopsis=?, kodePengarang=?, kodePenerbit=? where kodeBuku=?");
ps.setString(1, u.getJudul());
ps.setString(2, u.getBahasa());
ps.setString(3, u.getSinopsis());
ps.setString(4, u.getKodePengarang());
ps.setString(5, u.getKodePenerbit());
ps.setString(6, u.getKodeBuku());

status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}


public static fbuku getRecordById(String id) {
fbuku u = null;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("select * from buku where kodeBuku=?");
ps.setString(1, id);
ResultSet rs = ps.executeQuery();
while (rs.next()) {
u = new fbuku();
u.setKodeBuku(rs.getString("kodeBuku"));
u.setJudul(rs.getString("judul"));
u.setBahasa(rs.getString("bahasa"));
u.setSinopsis(rs.getString("sinopsis"));
u.setKodePengarang(rs.getString("kodePengarang"));
u.setKodePenerbit(rs.getString("kodePenerbit"));
}
} catch (Exception e) {
System.out.println(e);
}
return u;
}

public static int delete(fbuku u) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("delete from buku where kodeBuku=?");
ps.setString(1, u.getKodeBuku());
status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}


public static int save(fbuku gt) {
int status = 0;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("insert into buku(kodeBuku,judul,bahasa,sinopsis,kodePengarang,kodePenerbit) values (?,?,?,?,?,?)");
ps.setString(1, gt.getKodeBuku());
ps.setString(2, gt.getJudul());
ps.setString(3, gt.getBahasa());
ps.setString(4, gt.getSinopsis());
ps.setString(5, gt.getKodePengarang());
ps.setString(6, gt.getKodePenerbit());
status = ps.executeUpdate();
} catch (Exception e) {
System.out.println(e);
}
return status;
}

}

