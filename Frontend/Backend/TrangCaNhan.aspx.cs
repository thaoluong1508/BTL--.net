using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;
using System.Security.Cryptography.X509Certificates;

namespace Frontend.Backend
{
    public partial class TrangCaNhan : System.Web.UI.Page
    {
        Users user = new Users();
        Login_BUS bus = new Login_BUS();
        public int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            user.Email = Request.QueryString["Email"].ToString();
            user.Matkhau = Request.QueryString["Pass"].ToString();
            DataTable dt = new DataTable();
            dt = bus.getUser(user);
            dataList1.DataSource = dt;
            dataList1.DataBind();
            ID = Int32.Parse(dt.Rows[0]["Id_User"].ToString());
            txtHoTen.Text = dt.Rows[0]["HoTen"].ToString();
            cfEmail.Text = dt.Rows[0]["Email"].ToString();
            cfDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
            cfSDT.Text = dt.Rows[0]["SDT"].ToString();
            cfCMND.Text = dt.Rows[0]["CMND"].ToString();
        }
        
        protected void SubmitEdit(object sender, EventArgs e)
        {
            string tk = Request.QueryString["Pass"].ToString();
            user.Hoten = txtHoTen.Text.Trim();
            user.Email = cfEmail.Text.Trim();
            user.Diachi = cfDiaChi.Text.Trim();
            user.Sdt = cfSDT.Text.Trim();
            user.Cmnd = cfCMND.Text.Trim();
            user.Avatar = cfCMND.Text.Trim();
            user.Matkhau = cfNewPass.Text.Trim();
            user.Id = ID;

            if (cfConfirmPass.Text.Trim() != cfNewPass.Text.Trim())
            {
                Response.Write("<script>alert('Mật khẩu không khớp')</script>");
            }
            else if(tk != cfOldPass.Text.Trim())
            {
                Response.Write("<script>alert('Mật khẩu cũ chưa đúng')</script>");
            }
            else
            {
                string extension = System.IO.Path.GetExtension(cfAvatar.FileName); //tra ve duoi file
                if (extension == ".jpg" || extension == ".png" || extension == ".PNG" || extension == ".JPG")
                {
                    string path = Server.MapPath("~/uploads/users//");
                    cfAvatar.SaveAs(path + cfAvatar.FileName);
                    user.Avatar = "~/uploads/users/" + cfAvatar.FileName;
                    bus.updateUser(user);
                    Response.Write("<script>alert('Sửa thành công')</script>");
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}