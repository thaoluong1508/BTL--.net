<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="TrangCaNhan.aspx.cs" Inherits="Frontend.Backend.TrangCaNhan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList runat="server" ID="dataList1">
        <ItemTemplate>
             <div class="big" style="display:flex; width: 80%; margin:auto" >
             <div class="left" style="width: 30%">
                <table cellpadding="0" cellspacing="0" class="auto-style1">
                    <tr>
                        <td style="background-color:blue; color: white; font-size:24px; text-align:center">Trang cá nhân</td>
                    </tr>
                    <tr>
                        <td style="text-align:center">
                            <asp:Image ID="avar" ImageUrl='<%# Eval("Avatar") %>' runat="server" Width=100px Height="100px" />
                            <br />
                            <asp:Literal ID="Literal1" runat="server" Text='<%#Eval("HoTen") %>'></asp:Literal>
                        </td>
                    </tr>
                </table> 
            </div>
            <div class="right" style="width: 70%">
                <table cellpadding="0" cellspacing="0" class="auto-style1">
                    <tr>
                        <td style="background-color:blue; color: white; font-size:24px; text-align:center">Thay đổi thông tin cá nhân</td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" class="auto-style1">
                                <tr>
                                    <td><asp:Label ID="Label1" runat="server" Text="Label">Họ và tên    </asp:Label>
                                </td>
                                    <td><asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label2" runat="server" Text="Label">Email        </asp:Label>
                                </td>
                                    <td><asp:TextBox ID="cfEmail" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label3" runat="server" Text="Label">Số điện thoại    </asp:Label>
                            </td>
                                    <td><asp:TextBox ID="cfSDT" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label4" runat="server" Text="Label">Địa chỉ    </asp:Label>
                            </td>
                                    <td><asp:TextBox ID="cfDiaChi" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2"><asp:Button ID="submitEdit" runat="server" Text="Sửa" OnClick="SubmitEdit"/></td>
                                </tr>
                            </table>    
                        </td>
                    </tr>
                </table>
            </div>
        </div>      
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
