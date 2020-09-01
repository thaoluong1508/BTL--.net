<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Frontend.Backend.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:50%;margin:auto">
            <h2>Admin đăng nhập</h2>
            <div class="form-group">
                <label>Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="Email" />
            </div>
            <div class="form-group">
                <label>Mật khẩu</label>
                <asp:TextBox runat="server" type="password"  CssClass="form-control" ID="Password"/>
            </div>
            <asp:Button Text="Đăng nhập" CssClass="btn btn-primary" ID="Login" runat="server" OnClick="Login_Click" />
            <asp:Label ID="Errors" runat="server" />
        </div>
    </form>
</body>
</html>
