using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace Frontend.Backend
{
    public partial class QuanLyBaiDang : System.Web.UI.Page
    {
        QlBaiDang_BUS obj = new QlBaiDang_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
/*            if (Session["adEmail"].ToString() == "" && Session["quyen"].ToString() == "")
            {
                Session["error"] = "Bạn hãy đăng nhập";
                Response.Redirect("AdminLogin.aspx");
            }*/
            LoadData();
        }
        public void LoadData()
        {
            BaiDang.DataSource=obj.getBaiDang();
            BaiDang.DataBind();
        }

        protected void BaiDang_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            switch (e.CommandName.ToString())
            {
                case "delete":
                    obj.deleteAnh(id);
                    obj.deleteDat(id);
                    LoadData();
                    break;
                case "Duyet":
                    obj.Duyet(id);
                    LoadData();
                    break;
            }
        }
    }
}