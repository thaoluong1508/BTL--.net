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
    public class Slides_BUS
    {
        lop_DAL data = new lop_DAL();
        public DataTable listNew()
        {
            string sql = "select * from Slides";
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }

        public void delete(int id)
        {
            string sql = "delete from Slides where Id_slide =" + id;
            data.ExcuteNon(sql);
        }

        public void insert(string Anh, int viTri)
        {
            string sql = "insert into Slides values(N'" + Anh + "',N'" + viTri + "')";
            data.ExcuteNon(sql);
        }

        public void update(int id, string Anh, int viTri)
        {
            string sql = "update Slides set Slide=N'" + Anh
                + "',ViTri=" + viTri + " where Id_slide=" + id;
            data.ExcuteNon(sql);
        }

        public void update1(int id, int viTri)
        {
            string sql = "update Slides set ViTri=" + viTri + " where Id_slide=" + id;
            data.ExcuteNon(sql);
        }

        public DataTable getSlidesId(int id)
        {
            string sql = "select * from Slides where Id_slide=" + id;
            DataTable dt = new DataTable();
            dt = data.getTable(sql);
            return dt;
        }
    }
}
