/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package domainModels;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table (name = " NhaCungCap")

public class NhaCungCap {
    
    @Id
    @GenericGenerator(name = "generator", strategy = "guid", parameters = {})
    @GeneratedValue(generator = "generator")
    @Column(name = "Id", columnDefinition = "uniqueidentifier")
   private String Id;
    @Column(name = "Ma")
    private String Ma;
    @Column(name = "TenNCC")
    private String TenNCC;
    @Column(name = "DiaChi")
    private String DiaChi;
    @Column(name = " Sdt")
    private String Sdt;
    @Column(name = "TrangThai")
    private int TrangThai;

    public NhaCungCap() {
    }

    public NhaCungCap(String Id, String Ma, String TenNCC, String DiaChi, String Sdt, int TrangThai) {
        this.Id = Id;
        this.Ma = Ma;
        this.TenNCC = TenNCC;
        this.DiaChi = DiaChi;
        this.Sdt = Sdt;
        this.TrangThai = TrangThai;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getMa() {
        return Ma;
    }

    public void setMa(String Ma) {
        this.Ma = Ma;
    }

    public String getTenNCC() {
        return TenNCC;
    }

    public void setTenNCC(String TenNCC) {
        this.TenNCC = TenNCC;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getSdt() {
        return Sdt;
    }

    public void setSdt(String Sdt) {
        this.Sdt = Sdt;
    }

    public int getTrangThai() {
        return TrangThai;
    }

    public void setTrangThai(int TrangThai) {
        this.TrangThai = TrangThai;
    }

    @Override
    public String toString() {
        return "NhaCungCap{" + "Id=" + Id + ", Ma=" + Ma + ", TenNCC=" + TenNCC + ", DiaChi=" + DiaChi + ", Sdt=" + Sdt + ", TrangThai=" + TrangThai + '}';
    }
    
    
}
