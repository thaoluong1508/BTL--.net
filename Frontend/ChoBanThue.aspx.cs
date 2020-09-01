using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;
using DTO;
namespace Frontend
{
    public partial class ChoBanThue : System.Web.UI.Page
    {
        ChoBanThue_BUS choBanThue = new ChoBanThue_BUS();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //  Response.Write("<script> alert('Tai khoan khong ton tai'); </script>");
            if (Session["UserId"].ToString() != "")
            {
                int Id_User = int.Parse(Session["UserId"].ToString());
                string TieuDe = txtProductTitle.Text;
                int GiaTu = int.Parse(txtPrice.Text);
                string DiaChi = txtAddress.Text;
                string NoiDung = txtDescription.Text;
                float DienTich = float.Parse(txtArea.Text);
                string HuongNha = ddlHomeDirection.SelectedItem.ToString();
                int SoTang = Int32.Parse(txtFloorNumbers.Text);
                int PhongNgu = Int32.Parse(txtRoomNumber.Text);
                int PhongTam = Int32.Parse(txtToiletNumber.Text);
                string NoiThat = txtInterior.Text;
                string PhapLy = txtLegality.Text;
                int TrangThai = 0;
                int MuaBan = 0;
                int Id_DanhMuc = int.Parse(DanhMuc.SelectedValue);
                DateTime NgayDang = DateTime.Now;
                if (FileUp.HasFile)
                {
                    int id = choBanThue.insertNhaAnh(Id_User, Id_DanhMuc, TieuDe, NoiDung, DiaChi, GiaTu, DienTich, NgayDang, HuongNha, SoTang, PhongNgu, PhongTam, NoiThat, PhapLy, TrangThai, MuaBan);

                    foreach (HttpPostedFile uploadedFile in FileUp.PostedFiles)
                    {
                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/uploads/nha//"), uploadedFile.FileName));
                        choBanThue.insertAnh(id, "~/uploads/nha/"+uploadedFile.FileName);
                    }
                }
                else
                {
                    choBanThue.insertNha(Id_User, Id_DanhMuc, TieuDe, NoiDung, DiaChi, GiaTu, DienTich, NgayDang, HuongNha, SoTang, PhongNgu, PhongTam, NoiThat, PhapLy, TrangThai, MuaBan);
                    Response.Redirect("Home.aspx");
                    Response.Write("<script>alert('Đăng bài thành công')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('hãy đăng nhập để đăng bài')</script>");
               
            }
        }
    }
}