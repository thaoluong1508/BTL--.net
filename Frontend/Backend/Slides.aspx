<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Backend.Master" AutoEventWireup="true" CodeBehind="Slides.aspx.cs" Inherits="Frontend.Backend.Slides" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1>Quản lý tin tức</h1>
    <asp:MultiView ID="mul" ActiveViewIndex="0" runat="server">
        <asp:View ID="v1" runat="server">
            <div>
                <asp:LinkButton ID="Add" runat="server" CssClass="btn btn-primary" OnClick="Add_Click" >Thêm mới</asp:LinkButton>
                <hr />
                <asp:Repeater ID="listNew" runat="server" OnItemCommand="listNew_ItemCommand">
                    <HeaderTemplate>
                        <table class="table table-striped">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Ảnh</th>
                                <th scope="col">Vị trí</th>
                            </tr>       
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#:Eval("Id_slide") %>
                            </td>
                            <td>
                                <asp:Image runat="server" ID="Image2" ImageUrl='<%#:Eval("Slide") %>' AlternateText='<%#:Eval("Slide") %>' Width="150px"  />
                            </td>
                            <td>
                                <%#:Eval("ViTri") %>
                            </td> 
                            <td>
                                <asp:LinkButton OnClientClick="return confirm('Xóa?');" ID="delete" runat="server" CommandName="delete"
                                    CommandArgument='<%#:Eval("Id_slide") %>'>
                                    Xóa
                                </asp:LinkButton>
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="update"
                                    CommandArgument='<%#:Eval("Id_slide") %>'>
                                    edit
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>    
                </asp:Repeater>
            </div>
        </asp:View>
         <%-- View cập nhật thêm mới --%>
        <asp:View ID="v2" runat="server">
            <h3 style="color:rebeccapurple"><asp:Literal ID="Literal1" runat="server"></asp:Literal></h3>
                <asp:HiddenField ID="newsID" runat="server" />
                <asp:HiddenField ID="isUpdate" runat="server" />
                
                <div class="form-group">
                    <label>Slides</label>
                    <img src="" ID="image" width="150px;"/>

                    <asp:Image ID="Image1"  runat="server" ImageUrl="" Width="150px" />
                    <asp:FileUpload ID="FileUp" onchange="Preview()" runat="server" />
                    <script>
                        function Preview() {
                            var output_1 = document.getElementById('image');
                            output_1.src = URL.createObjectURL(event.target.files[0]);
                            output_1.onload = function () {
                                URL.revokeObjectURL(output_1.src)
                            }
                        };
                </script>
                </div>

                <div class="form-group">
                    <label>Vị trí</label>
                    <asp:TextBox runat="server" ID="ViTri" CssClass="form-control" />
                </div>
 
            <asp:Button ID="Save" CssClass="btn btn-primary" Text="save" runat="server" OnClick="Save_Click" />
                
        </asp:View>
    </asp:MultiView>
</asp:Content>
