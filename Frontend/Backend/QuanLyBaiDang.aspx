<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Backend.Master" AutoEventWireup="true" CodeBehind="QuanLyBaiDang.aspx.cs" Inherits="Frontend.Backend.QuanLyBaiDang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ActiveViewIndex="0" ID="mul" runat="server">
        <asp:View runat="server">
            <h1>Quản lý bài đăng</h1>
            <asp:Repeater ID="BaiDang" runat="server" OnItemCommand="BaiDang_ItemCommand">
                <HeaderTemplate>
                    <table class="table table-striped">
                        <th scope="col">Tên khách hàng</th>
                        <th scope="col">Mua || bán</th>
                        <th scope="col">Tiêu đề</th>
                        <th scope="col">Nội dung</th>
                        <th scope="col">Địa chỉ đất</th>
                        <th scope="col">Giá khoảng</th>
                        <th scope="col">Diện tích</th>
                        <th scope="col">Ngày đăng</th>
                        <th scope="col">Chi tiết</th>
                        <th scope="col">Nội thất</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Action</th>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("HoTen") %></td>
                        <td><%#Eval("MuaBan").ToString() == "0" ? "Cho thuê/bán":"Cần thuê/mua" %></td>

                        <td><%#Eval("TieuDe") %></td>
                        <td><%#Eval("NoiDung") %></td>
                        <td><%#Eval("DiaChi") %></td>
                        <td><%#Eval("GiaTu") %></td>
                        <td><%#Eval("DienTich") %></td>
                        <td><%#Eval("NgayDang") %></td>
                        <td>
                            Hướng nhà:<%#Eval("HuongNha") %><br />Số tầng:<%#Eval("SoTang") %>&nbsp;&nbsp;Phòng ngủ<%#Eval("PhongNgu") %><br />Phòng Tắm: <%#Eval("PhongTam") %>
                            Pháp lý: <%#Eval("PhapLy") %>
                        </td>
                        <td><%#Eval("NoiThat") %></td>
                        <td>
                           <%# Eval("TrangThai").ToString() == "0" ? "Chưa duyệt":"Duyệt" %>
                        </td>
                        <td>
                            <asp:LinkButton OnClientClick="return confirm('Xóa?');" ID="delete" CommandName="delete" CommandArgument='<%#Eval("Id_Dat") %>' runat="server">Xóa</asp:LinkButton>

                            &nbsp;&nbsp;
                            <asp:LinkButton ID="XemAnh" CommandArgument='<%#Eval("Id_Dat") %>' CommandName="ChiTiet" runat="server">ChiTiet</asp:LinkButton>
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="Duyet" CommandArgument='<%#Eval("Id_Dat") %>' CommandName="Duyet"  runat="server">Duyệt</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </asp:View>
        <asp:View runat="server">

        </asp:View>
    </asp:MultiView>
</asp:Content>
