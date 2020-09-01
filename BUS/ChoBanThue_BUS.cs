using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
namespace BUS
{
    public class ChoBanThue_BUS
    {
        lop_DAL data = new lop_DAL();

        public void insertAnh(int Id_Dat, string Anh)
        {
            string sql = "insert into Anh (Id_Dat,Anh) values('" + Id_Dat + "',N'" + Anh + "')";
            data.ExcuteNon(sql);
        }

        public void insertNha(int Id_User,int Id_DanhMuc, string TieuDe, string NoiDung, string DiaChi ,
            int GiaTu, float DienTich, DateTime NgayDang,  string HuongNha, int SoTang, int PhongNgu,
            int PhongTam, string NoiThat, string PhapLy,int TrangThai,int MuaBan)
        {
            string sql = "insert into Nha values('"
                + Id_User + "','" + Id_DanhMuc + "',N'"
                + TieuDe + "',N'" + NoiDung + "',N'"
                + DiaChi + "','" + GiaTu + "','"
                + DienTich + "','" + NgayDang + "',N'"
                + HuongNha + "','" + SoTang + "','"
                + PhongNgu + "','" + PhongTam + "',N'"
                + NoiThat + "',N'" + PhapLy + "','"
                + TrangThai + "','" + MuaBan + "')";
            data.ExcuteNon(sql);
        }
        public int insertNhaAnh(int Id_User, int Id_DanhMuc, string TieuDe, string NoiDung, string DiaChi,
            int GiaTu, float DienTich, DateTime NgayDang, string HuongNha, int SoTang, int PhongNgu,
            int PhongTam, string NoiThat, string PhapLy, int TrangThai, int MuaBan)
        {
            string sql = "insert into Nha OUTPUT INSERTED.Id_Dat values('"
                + Id_User + "','" + Id_DanhMuc + "',N'"
                + TieuDe + "',N'" + NoiDung + "',N'"
                + DiaChi + "','" + GiaTu + "','"
                + DienTich + "','" + NgayDang + "',N'"
                + HuongNha + "','" + SoTang + "','"
                + PhongNgu + "','" + PhongTam + "',N'"
                + NoiThat + "',N'" + PhapLy + "','"
                + TrangThai + "','" + MuaBan + "')";
            int id= data.getLastInsert(sql);
            return id;
        }


    }
}
