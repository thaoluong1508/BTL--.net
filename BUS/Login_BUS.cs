using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
namespace BUS
{
    public class Login_BUS
    {
        lop_DAL data = new lop_DAL();
        // admin
        public DataTable getAdmin(Users u)
        {
            string sql = "select * from Users where Email = '" + u.Email + "' and MatKhau ='" + u.Matkhau + "' and quyen='admin'";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        // user
        public DataTable getUser(Users u)
        {
            string sql = "select * from Users where Email = '" + u.Email + "' and MatKhau ='" + u.Matkhau + "'";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        public void insertUser(Users u)
        {
            string sql = "insert into Users values(N'" + u.Hoten + "','"
                + u.Email + "','" + u.Matkhau + "','"
                + u.Sdt + "','user',N'" + u.Diachi + "','"
                + u.Cmnd + "',N'" + u.Avatar + "')";
            data.ExcuteNon(sql);
        }

        public void updateUser(Users u)
        {
            string sql = "update Users set HoTen=N'" + u.Hoten + "', Email='" + u.Email + "', MatKhau='" + u.Matkhau + "', SDT='" + u.Sdt + "',DiaChi = N'" + u.Diachi + "', CMND = '" + u.Cmnd + "', Avatar = '" + u.Avatar + "' where Id_User = '" + u.Id + "'";
            data.ExcuteNon(sql);
        }
    }
}
