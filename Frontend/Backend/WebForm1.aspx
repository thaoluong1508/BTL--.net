<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Frontend.Backend.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="big" style="display:flex; width: 80%; margin:auto" >
            <div class="left" style="width: 30%">
                
                <table cellpadding="0" cellspacing="0" class="auto-style1" border="1">
                    <tr>
                        <td class="auto-style2">Trang cá nhân</td>
                    </tr>
                    <tr>
                        <td style="text-align:center" class="auto-style2">
                            <asp:Image ID="avar" ImageUrl='<%# Eval("Avatar") %>' runat="server" />
                            <br />
                            <asp:Literal ID="Literal1" runat="server" Text='<%#Eval("HoTen") %>'></asp:Literal>
                        </td>
                    </tr>
                </table>
                
            </div>
            <div class="right" style="width: 70%">

                <table cellpadding="0" cellspacing="0" class="auto-style1">
                    <tr>
                        <td>Thay đổi thông tin cá nhân<br />
                            <table cellpadding="0" cellspacing="0" class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label">Họ và tên    </asp:Label>
                            <asp:TextBox ID="cfHoTen" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Label">Email        </asp:Label>
                            <asp:TextBox ID="cfEmail" runat="server"></asp:TextBox>
                             <br />
                            <asp:Label ID="Label3" runat="server" Text="Label">Số điện thoại    </asp:Label>
                            <asp:TextBox ID="cfSDT" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Label">Địa chỉ    </asp:Label>
                            <asp:TextBox ID="cfDiaChi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>
