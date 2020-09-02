using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;

namespace Frontend.Backend
{
    public partial class TrangCaNhan : System.Web.UI.Page
    {
        Users user = new Users();
        Login_BUS bus = new Login_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            user.Email = Request.QueryString["Email"].ToString();
            user.Matkhau = Request.QueryString["Pass"].ToString();
            DataTable dt = new DataTable();
            dt = bus.getUser(user);
            dataList1.DataSource = dt;
            dataList1.DataBind();      
        }
        protected void SubmitEdit(object sender, EventArgs e)
        {
            
        }
    }
}