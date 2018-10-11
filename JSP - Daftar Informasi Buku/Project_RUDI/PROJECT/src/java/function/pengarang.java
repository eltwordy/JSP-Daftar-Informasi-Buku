/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package function;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import function.fpengarang;
/**
 *
 * @author Rudi
 */
public class pengarang {
public static List<fpengarang> getAllRecords(){
List<fpengarang> list=new ArrayList<fpengarang>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select pengarang.kodePengarang,buku.judul,buku.bahasa,buku.sinopsis,pengarang.pengarang,penerbit.penerbit,penerbit.alamat from buku join pengarang on buku.kodePengarang=pengarang.kodePengarang join penerbit on buku.kodePenerbit=penerbit.kodePenerbit ");
ResultSet rs=ps.executeQuery();
while(rs.next()){
fpengarang u=new fpengarang();
u.setKodePengarang(rs.getString("kodePengarang"));
u.setJudul(rs.getString("judul"));
u.setBahasa(rs.getString("bahasa"));
u.setSinopsis(rs.getString("sinopsis"));
u.setPengarang(rs.getString("pengarang"));
u.setPenerbit(rs.getString("penerbit"));
u.setAlamat(rs.getString("alamat"));
list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static fpengarang getRecordById(String id) {
fpengarang u = null;
try {
Connection con = koneksi.getKoneksi();
PreparedStatement ps = con.prepareStatement("select * from pengarang where kodePengarang=?");
ps.setString(1, id);
ResultSet rs = ps.executeQuery();
while (rs.next()) {
u = new fpengarang();
u.setKodePengarang(rs.getString("kodePengarang"));
u.setJudul(rs.getString("judul"));
u.setBahasa(rs.getString("bahasa"));
u.setSinopsis(rs.getString("sinopsis"));
u.setPengarang(rs.getString("pengarang"));
u.setPenerbit(rs.getString("penerbit"));
}
} catch (Exception e) {
System.out.println(e);
}
return u;
}

//public static int update(fpengarang u) {
//int status = 0;
//try {
//Connection con = koneksi.getKoneksi();
//PreparedStatement ps = con.prepareStatement("update pengarang set judul=?,bahasa=?,sinopsis=?, pengarang=?, penerbit=? where kodePengarang=?");
//ps.setString(1, u.getJudul());
//ps.setString(2, u.getBahasa());
//ps.setString(3, u.getSinopsis());
//ps.setString(4, u.getPengarang());
//ps.setString(5, u.getPenerbit());
//ps.setString(6, u.getKodePengarang());
//status = ps.executeUpdate();
//} catch (Exception e) {
//System.out.println(e);
//}
//return status;
//}
//
//
//public static int delete(fpengarang u) {
//int status = 0;
//try {
//Connection con = koneksi.getKoneksi();
//PreparedStatement ps = con.prepareStatement("delete from pengarang where kodePengarang=?");
//ps.setString(1, u.getKodePengarang());
//status = ps.executeUpdate();
//} catch (Exception e) {
//System.out.println(e);
//}
//return status;
//}
//
//public static int save(fpengarang gt) {
//int status = 0;
//try {
//Connection con = koneksi.getKoneksi();
//PreparedStatement ps = con.prepareStatement("insert into pengarang(kodePengarang,judul,bahasa,sinopsis,pengarang,penerbit) values (?,?,?,?,?,?)");
//ps.setString(1, gt.getKodePengarang());
//ps.setString(2, gt.getJudul());
//ps.setString(3, gt.getBahasa());
//ps.setString(4, gt.getSinopsis());
//ps.setString(5, gt.getPengarang());
//ps.setString(6, gt.getPenerbit());
//status = ps.executeUpdate();
//} catch (Exception e) {
//System.out.println(e);
//}
//return status;
//}
}