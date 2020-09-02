using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;

namespace Frontend
{
    public partial class Frontend : System.Web.UI.MasterPage
    {
        TinTuc_BUS news = new TinTuc_BUS();
        Login_BUS UserBus = new Login_BUS();
        Users user = new Users();
        protected void Page_Load(object sender, EventArgs e)
        {
            getCateNew();
        }
        public void getCateNew()
        {
            listCateNews.DataSource = news.listCateNews();
            listCateNews.DataBind();
        }
        protected void listCateNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("TinTuc.aspx?id=" + id.ToString());
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            user.Email = LoginEmail.Text;
            user.Matkhau = LoginPassword.Text;
            DataTable dt = new DataTable();
            dt = UserBus.getUser(user);
            if (dt.Rows.Count == 1)
            {
                Session["UserId"] = dt.Rows[0]["Id_User"];
                Session["HoTen"] = dt.Rows[0]["HoTen"];
                Session["Email"] = dt.Rows[0]["Email"];
                string sEmail = LoginEmail.Text;
                string sPass = LoginPassword.Text;
                Response.Redirect("Backend/TrangCaNhan.aspx?Email=" + sEmail + "&Pass=" + sPass);
            }
            else
            {
                Response.Write("<script>alert('Sai tài khoản hoặc mật khẩu')</script>");
            }
        }
        protected void DangKy_Click(object sender, EventArgs e)
        {
            user.Hoten = username.Text.Trim();
            user.Email = email.Text.Trim();
            user.Matkhau = password.Text.Trim();
            user.Sdt = SDT.Text;
            user.Diachi = DiaChi.Text;
            user.Cmnd = CMND.Text;
            if (confirmPass.Text.Trim() != password.Text.Trim())
            {
                Response.Write("<script>alert('Mật khẩu không khớp')</script>");
                return;
            }
            if(username.Text.Trim() == "" || email.Text.Trim() == "" || password.Text.Trim() == "" || confirmPass.Text.Trim() == "" || SDT.Text.Trim() == "" || CMND.Text.Trim() == "" || DiaChi.Text.Trim() == "")
            {
                Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin')</script>");
                return;
            }

            if (avatar.HasFile)
            {
                string extension = System.IO.Path.GetExtension(avatar.FileName); //tra ve duoi file
                if (extension == ".jpg" || extension == ".png" || extension == ".PNG" || extension == ".JPG")
                {
                    string path = Server.MapPath("~/uploads/users//");
                    avatar.SaveAs(path + avatar.FileName);
                    user.Avatar = "~/uploads/users/" + avatar.FileName;
                    UserBus.insertUser(user);
                    Response.Write("<script>alert('Đăng ký thành công')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Định dạng ảnh .jpg hoặc .png')</script>");
                    return;
                }
            }
            else
            {
                return;
            }
        }
    }
}