using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BUS
{
    public class QlBaiDang_BUS
    {
        lop_DAL data = new lop_DAL();
        public DataTable getBaiDang()
        {
            string sql = "select * from Nha inner join Users on Users.Id_User=Nha.Id_User where TrangThai = 0";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
        // Xóa đất
        public void deleteAnh(int id)
        {
            string sql = "delete from Anh where Id_Dat = "+ id;
            data.ExcuteNon(sql);
        }
        public void deleteDat(int id)
        {
            string sql = "delete from Nha where Id_Dat = " + id;
            data.ExcuteNon(sql);
        }
        //end xóa đất
        //duyet
        public void Duyet(int id)
        {
            string sql = "update Nha set TrangThai= 1 where Id_Dat=" + id;
            data.ExcuteNon(sql);
        }
    }
}
