using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace Frontend.Backend
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Login_BUS obj = new Login_BUS();
        Users user = new Users();
        protected void Page_Load(object sender, EventArgs e)
        {
            Errors.Text = "";
            if(Session["error"].ToString() != "")
            {
                Errors.Text = Session["error"].ToString();
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            user.Email = Email.Text;
            user.Matkhau = Password.Text;
            DataTable dt = new DataTable();
            dt = obj.getAdmin(user);
            /*Response.Write(dt.Rows[0]["quyen"].ToString());*//**/
            if(dt.Rows.Count == 1)
            {
                if(dt.Rows[0]["quyen"].ToString().Trim() == "admin")
                {
                    Session["adEmail"] = dt.Rows[0]["Email"].ToString();
                    Session["adUserName"] = dt.Rows[0]["HoTen"].ToString();
                    Session["quyen"] = "admin";
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Session["error"] = "Bạn không được phép vào";
                    Errors.Text = Session["error"].ToString();
                }
    
            }
            else
            {
                Session["error"] = "Sai tài khoản hoặc mật khẩu";
                Errors.Text = Session["error"].ToString();
            }
        }
    }
}