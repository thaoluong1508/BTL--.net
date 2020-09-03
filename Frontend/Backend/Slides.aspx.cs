using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;
using DTO;

namespace Frontend.Backend
{
    public partial class Slides : System.Web.UI.Page
    {
        Slides_BUS slides = new Slides_BUS();

        protected void Page_Load(object sender, EventArgs e)
        {
/*            if (Session["adEmail"].ToString() == "" && Session["quyen"].ToString() == "")
            {
                Session["error"] = "Bạn hãy đăng nhập";
                Response.Redirect("AdminLogin.aspx");
            }*/
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            listNew.DataSource = slides.listNew();
            listNew.DataBind();
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            int vitri = Int32.Parse(ViTri.Text);
            string IsUpdate = isUpdate.Value;
            /* UTpdate*/
            if (IsUpdate == "update")
            {
                int id = int.Parse(newsID.Value);
                if (FileUp.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUp.FileName);
                    
                    if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                    {
                        string path = Server.MapPath("~/uploads/slides//");
                        FileUp.SaveAs(path + FileUp.FileName);
                        string Anh = "~/uploads/slides/" + FileUp.FileName;
                        slides.update(id, Anh, vitri);
                    }
                    else
                    {
                        return;
                    }
                }
                else
                {
                    slides.update1(id, vitri);
                }
            }
            /* Thêm mới */
            else
            {
                if (FileUp.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(FileUp.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                    {
                        string path = Server.MapPath("~/uploads/slides//");
                        FileUp.SaveAs(path + FileUp.FileName);

                        string Anh = "~/uploads/slides/" + FileUp.FileName;


                        slides.insert(Anh, vitri);
                    }
                    else
                    {
                        return;
                    }
                }
                else
                {
                    return;
                }
            }

            Response.Redirect(Request.Url.ToString());
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            mul.ActiveViewIndex = 1;
            Literal1.Text = "";
            Literal1.Text = "Thêm mới slide";
        }

        protected void listNew_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            switch (e.CommandName.ToString())
            {
                case "update":
                    mul.ActiveViewIndex = 1;
                    newsID.Value = id.ToString();
                    isUpdate.Value = "update";
                    DataTable dt = new DataTable();
                    Literal1.Text = "";
                    Literal1.Text = "Cập nhật sản phẩm";
                    dt = slides.getSlidesId(id);
                    if (dt.Rows.Count > 0)
                    {
                        Image1.ImageUrl = dt.Rows[0]["Slide"].ToString();
                        ViTri.Text = dt.Rows[0]["ViTri"].ToString();
                    }
                    break;
                case "delete":
                    slides.delete(id);
                    LoadData();
                    break;

            }
        }
    }
}