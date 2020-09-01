<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend.Master" AutoEventWireup="true" CodeBehind="ChoBanThue.aspx.cs" Inherits="Frontend.ChoBanThue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <div class="site-center">
            <div id="MiddleSubMenu">
                <div class="home-top-search" style="padding-bottom: 10px !important;">
                    <div class="home-top-search-keyword">
                        <input name="ctl00$ctl31$ctl00$txt1" type="text" value="Nhập từ khóa để tìm theo cụm từ" id="txt1" class="txtKeyword">
                    </div>
                    <div class="advance-select-box" id="home-top-search">
                        <span class="select-text">
                            <span class="select-text-content" style="width: 100px;">Nhà đất bán</span>
                        </span>
                        <input type="hidden" name="ctl00$ctl31$ctl00$cboTypeSearch" id="cboTypeSearch" value="1">
                        <div id="home-top-search-otions" class="advance-select-options advance-options" hddvalue="cboTypeSearch" ddlid="home-top-search" currlevel="1" style="">
                            <ul class="advance-options" style="min-width: 126px;">
                                <li vl="1" class="advance-options current" style="min-width: 94px;">Nhà đất bán</li>
                                <li vl="2" class="advance-options" style="min-width: 94px;">Nhà đất cho thuê</li>
                                <li vl="3" class="advance-options" style="min-width: 94px;">Tin tức</li>
                                <li vl="4" class="advance-options" style="min-width: 94px;">Hỏi đáp</li>
                                <li vl="5" class="advance-options" style="min-width: 94px;">Dự án</li>
                                <li vl="6" class="advance-options" style="min-width: 94px;">Doanh nghiệp</li>
                                <li vl="7" class="advance-options" style="min-width: 94px;">Môi giới</li>
                            </ul>
                        </div>
                    </div>
                    <img src="https://file4.batdongsan.com.vn/images/tim-kiem.jpg" onclick="Redirect();" class="fg-button fg-button-bg-default fg-button-toggleable ui-corner-all" alt="Tìm kiếm" name="btnSearch" id="btnSearch">
                </div>
                <div id="gglbody"></div>             
                <div style="clear: both;"></div>
            </div>
            <div id="MainContent">
                <div class="container-default">
                    <div id="ctl27_BodyContainer"></div>
                </div>
            </div>
            <div class="body-left">
                <div id="Breadcrumb" style="width: 100%;"></div>
                <div id="TopContent" style="margin: 0"></div>
                <div>
                    <div id="TopContentLeft" class="SubTopContent"></div>
                    <div id="TopContentRight" class="SubTopContent"></div>
                </div>
                <div style="clear: both;"></div>
                <div id="LeftMainContent">
                    <div class="container-default">
                        <div id="ctl30_BodyContainer">
                            <div id="pnlEdit" class="post-product">
                                <link rel="stylesheet" type="text/css" href="https://content.batdongsan.com.vn/Scripts/jquery-ui.css" media="all">
                                <div class="post-bg-Title">
                                    <h1 class="bluecolor">Đăng tin rao bán, cho thuê nhà đất</h1>
                                    <div class="graycolor">
                                        (Quý vị nhập thông tin nhà đất cần bán hoặc cho thuê vào các mục dưới đây)
                                    </div>
                                </div>

                                <div class="dang-tin-rao-tab">
                                    <table cellpadding="0" cellspacing="0" class="auto-style1">
                                        <tbody>
                                            <tr>
                                                <td style="width: 50%"><a class="active fl" href="/dang-tin-rao-vat-ban-nha-dat" title="Cần bán/Cho thuê">Cần bán/Cho thuê</a></td>
                                                <td><a class="fl" href="/dang-tin-rao-vat-mua-nha-dat" title="Cần mua/Cần thuê">Cần mua/Cần thuê</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div id="divPostNews">
                                    <div class="rowHeader">
                                        <h2>Thông tin cơ bản</h2>
                                    </div>
                                    <div class="rowContent">
                                        <div class="rowContentLeft">
                                            <div class="rowPost">
                                                <div style="color: #f00; text-align: center;">
                                                    <span id="ctl30_ctl00_lblServerErrorMsg"></span>
                                                </div>
                                                <div class="leftArea leftPostArea">
                                                    <div id="labeltitle">
                                                        <label>
                                                            Tiêu đề(<span class="redfont">*</span>):</label>
                                                    </div>
                                                    <div class="input">
                                                        <asp:TextBox ID="txtProductTitle" Style="margin-left: 10px; width: 215px" runat="server"></asp:TextBox>
                                                        <div class="errorMessage" style="display: none;"></div>
                                                        <div class="helpMessage" style="clear: both;" rel="txtProductTitle">
                                                            <div class="text">
                                                                <img src="https://file4.batdongsan.com.vn/images/Home/images/arrow.png" alt="">Vui lòng nhập tiêu đề tin đăng của bạn. Tối thiểu là 30 ký tự và tối đa là 99 ký tự.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                            <div class="postrow">
                                                <div class="base1">
                                                    Diện tích
                                                </div>
                                                <div class="base4">
                                                    <div style="float: left; width: 20px">
                                                        <asp:TextBox ID="txtArea" class="auto-style2" runat="server"></asp:TextBox>
                                                        <span class="errorMessage" style="display: none;" style="width: 215px"></span>
                                                    </div>
                                                    <span style="margin-left: 60px">m²</span>
                                                </div>
                                            </div>
                                            <div class="postrow">
                                                <div class="base1">
                                                    Giá
                                                </div>
                                                <div class="base2">
                                                    <asp:TextBox ID="txtPrice" class="text-field" Style="width: 70px;" runat="server"></asp:TextBox>
                                                    <span style="color: #f00; display: inline-block;"></span>
                                                    <span style="margin-left: 0px">triệu</span>
                                                </div>
                                            </div>
                                            <div class="postrow">
                                                <div class="base1">
                                                    Địa chỉ (<span class="redfont">*</span>)
                                                </div>
                                                <div class="base5">
                                                    <asp:TextBox ID="txtAddress" Style="width: 560px;" runat="server"></asp:TextBox>
                                                    <span class="errorMessage" style="display: none;"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="rowHeader">
                                        <h2>Thông tin mô tả</h2>
                                    </div>
                                    <div class="rowContent">
                                        <div class="postrow product-description" style="margin-left: 10px">
                                            <p>
                                                (<span class="redfont">*</span>)<span class="grayfont"> Tối đa chỉ 3000 ký tự</span>
                                            </p>
                                            <asp:TextBox ID="txtDescription" Style="margin-bottom: 10px; height: 140px; width: 410px; max-width: 435px; float: left" runat="server"></asp:TextBox>
                                            <div rel="txtDescription" style="float: left; margin-top: 5px; padding-left: 5px; text-align: justify; width: 270px;">
                                                <div class="text">
                                                    <img src="https://file4.batdongsan.com.vn/images/Home/images/arrow.png" alt="">
                                                    Giới thiệu chung về bất động sản của bạn. Ví dụ: Khu nhà có vị trí thuận lợi: Gần
                                 công viên, gần trường học ... Tổng diện tích 52m2, đường đi ô tô vào tận cửa.<br>
                                                    <span style="color: #f00;">Lưu ý: tin rao chỉ để mệnh giá tiền Việt Nam Đồng.</span>
                                                </div>
                                            </div>
                                            <span class="errorMessage" style="display: none;"></span>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="rowHeader">
                                        <h2>Thông tin khác</h2>
                                    </div>
                                    <div class="rowContent">
                                        <div style="padding: 10px 20px 0 20px;">
                                            Quý vị nên điền đầy đủ thông tin vào các mục dưới đây để tin đăng có hiệu quả hơn
                                        </div>
                                        <div class="rowContentLeft">

                                            <div class="postrow">
                                                <div class="base1">
                                                    Hướng nhà
                                                </div>
                                                <div class="base2 form-group">
                                                    <asp:DropDownList ID="ddlHomeDirection" class="dropdown-list" Style="width: 215px" runat="server" CssClass="form-control">
                                                        <asp:ListItem Value="0">KXĐ</asp:ListItem>
                                                        <asp:ListItem Value="1">Đông</asp:ListItem>
                                                        <asp:ListItem Value="2">Tây</asp:ListItem>
                                                        <asp:ListItem Value="3">Nam</asp:ListItem>
                                                        <asp:ListItem Value="4">Bắc</asp:ListItem>
                                                        <asp:ListItem Value="5">Đông-Bắc</asp:ListItem>
                                                        <asp:ListItem Value="6">Tây-Bắc</asp:ListItem>
                                                        <asp:ListItem Value="7">Tây-Nam</asp:ListItem>
                                                        <asp:ListItem Value="8">Đông-Nam</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="postrow">
                                                <div class="base1 form-group" >
                                                    Danh mục
                                                </div>
                                                <div class="base2 form-group">
                                                    <asp:DropDownList ID="DanhMuc" runat="server"  CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="TenDanhMuc" DataValueField="Id_DanhMuc">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BatDongSanConnectionString7 %>" SelectCommand="SELECT * FROM [DanhMuc]"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            <div class="postrow">
                                                <div class="spSoTang">
                                                    <div class="base1">
                                                        Số tầng
                                                    </div>
                                                    <div class="base2">
                                                        <div style="width: 100%; float: left;">
                                                            <asp:TextBox ID="txtFloorNumbers" class="text-field" Style="width: 215px" runat="server"></asp:TextBox>
                                                            <span class="errorMessage" style="display: none;"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="postrow" style="width: 700px">
                                                <div class="spSoPhongNgu">
                                                    <div class="base1" style="width: 120px">Số phòng ngủ </div>
                                                    <div class="base2">
                                                        <asp:TextBox ID="txtRoomNumber" class="text-field" Style="width: 215px" runat="server"></asp:TextBox>
                                                        <span class="errorMessage" style="display: none;"></span>
                                                    </div>
                                                </div>
                                                <div class="spToilet">
                                                    <div class="base1" style="margin-left: 60px; width: 90px">
                                                        Số toilet
                                                    </div>
                                                    <div class="base2">
                                                        <asp:TextBox ID="txtToiletNumber" class="text-field" Style="width: 215px" runat="server"></asp:TextBox>
                                                        <span class="errorMessage" style="display: none;"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="postrow">
                                                <div class="spNoiThat">
                                                    <div class="base1">
                                                        Nội thất
                                                    </div>
                                                    <div class="base5">
                                                        <div style="width: 100%; float: left;">
                                                            <asp:TextBox ID="txtInterior" class="text-field" Style="width: 560px; height: 130px" MaxLength="200" runat="server"></asp:TextBox>
                                                            <span class="errorMessage" style="display: none;"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="postrow">
                                                <div class="spNoiThat">
                                                    <div class="base1">
                                                        Thông tin pháp lý
                                                    </div>
                                                    <div class="base5">
                                                        <div style="width: 100%; float: left;">
                                                            <asp:TextBox ID="txtLegality" class="text-field" Style="width: 560px; height: 60px" MaxLength="255" placeholder="Ví dụ: Đã có sổ đỏ. Đã có sổ hồng. Đã được phê duyệt quyết định đầu tư..." runat="server"></asp:TextBox>
                                                            <span class="errorMessage" style="display: none;"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="rowHeader">
                                        <h2>Hình ảnh và Video</h2>
                                    </div>
                                    <div class="rowContent">
                                        <div class="postrow product-image" style="width: 95%; margin-left: 20px">
                                            <p>Số lượng ảnh tối đa theo các loại tin: VIP Đặc biệt - 24 ảnh, VIP1 - 20 ảnh, VIP2 &amp; VIP 3 - 18 ảnh, VIP Ưu đãi - 16 ảnh, Tin thưởng - 8 ảnh. Mỗi ảnh tối đa 2MB</p>
                                            <span id="ctl30_ctl00_FileServer2" class=" bdsGuestUpload360">
                                                <input type="hidden" name="ctl00$ctl30$ctl00$FileServer2$ctl00" id="ctl30_ctl00_FileServer2_ctl00">
                                                <link href="/trang-ca-nhan/Plugin/BDSUpload/css.css" rel="stylesheet" type="text/css">
                                                <div id="ctl30_ctl00_FileServer2_container" maxcount="24" input="ctl30_ctl00_FileServer2_ctl00" sv="http://upload2.batdongsan.com.vn/" class="guestupload upload-create-form bdsGuestUpload360" svid="3" key="k94b0Op0bBRQCaZdE55gS7caUGz/zSmQp3SIat2otOM=" is360="true">
                                                    <div class="droptext textUploadNotice">Tin rao có ảnh sẽ được xem nhiều hơn gấp 10 lần và được nhiều người gọi gấp 5 lần so với tin rao không có ảnh. Hãy đăng ảnh để được giao dịch nhanh chóng!</div>
                                                    <div class="thumbnails ui-sortable"></div>
                                                    <div style="float: left; margin-right: 5px; border-radius: 5px; width: 164px; height: 230px; background-image: url(/Plugin/BDSUpload/images/bg-upload-area.png); background-color: rgb(218, 228, 237); position: relative; overflow: hidden; direction: ltr; background-position: 50% 95%; background-repeat: no-repeat no-repeat; margin-bottom: 10px; display: none;" class="divFileProgressContainer">
                                                        <div class="progressWrapper" id="divFileProgress"></div>
                                                    </div>
                                                    <div class="spanButtonPlaceholder block-upload-item" id="upload-drop-zone" style="position: relative; overflow: hidden; direction: ltr;">
                                                        <p>(Click để tải ảnh<br>
                                                            hoặc kéo thả ảnh vào đây)</p>
                                                        <input multiple="multiple" type="file" name="file" style="font-family: Arial; font-size: 118px; margin: 0px; padding: 0px; opacity: 0;" class="auto-style3">
                                                    </div>
                                                    <div class="divFileProgressContainer1" style="display: none;"></div>
                                                    <div class="droptext">Đăng ảnh thật nhanh bằng cách kéo và thả ảnh vào khung.  Thay đổi vị trí của ảnh bằng cách kéo ảnh vào vị trí mà bạn muốn!</div>
                                                </div>
                                            </span>
                                        </div>
                                        <div class="guide-360" style="width: 95%; margin-left: 20px">
                                            <div class="header" onclick="guid360()">
                                                <img src="https://file4.batdongsan.com.vn/images/tooltip/360.png">
                                                Hướng dẫn đăng ảnh 360°
                                            </div>
                                            <div class="guide-360-cnt hide" style="display: none;">
                                                <div class="normalblue">Batdongsan.com.vn nay đã hỗ trợ đăng và xem ảnh 360° trong tin rao!</div>
                                                <div>
                                                    Ảnh 360° được hỗ trợ bao gồm ảnh dạng hình cầu (Photo Sphere) và ảnh toàn cảnh (Panorama). Tin rao có ảnh 360° sẽ được gắn nhãn
                                 <img src="https://file4.batdongsan.com.vn/images/tooltip/360.png">
                                                </div>
                                                <div class="titgd"><span>3</span> bước đơn giản để đăng ảnh 360°:</div>
                                                <div class="gd">
                                                    <ol>
                                                        <li>
                                                            <strong>1</strong>&nbsp;&nbsp;&nbsp;Chụp ảnh 360° bất động sản của bạn theo một trong các cách sau:
                                       <ul>
                                           <li>Sử dụng thiết bị chụp ảnh 360° chuyên dụng (VD: Samsung Gear 360)  </li>
                                           <li>Sử dụng điện thoại thông minh có chế độ chụp ảnh toàn cảnh (Panorama).</li>
                                           <li>Sử dụng điện thoại thông minh có cài đặt ứng dụng bên thứ 3 (VD: Google Street View hoặc Cardboard Camera)</li>
                                       </ul>
                                                        </li>
                                                        <li><strong>2</strong>&nbsp;&nbsp;&nbsp;Tải ảnh lên Batdongsan.com.vn bằng nút đăng ảnh hoặc kéo thả ảnh như thông thường</li>
                                                        <li><strong>3</strong>&nbsp;&nbsp;&nbsp;Đánh dấu vào ô
                                       <img src="https://file4.batdongsan.com.vn/images/tooltip/tick.png">
                                                            <strong>Ảnh 360°</strong> để chọn những ảnh bạn muốn hiển thị theo chế độ Ảnh 360°
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div>
                                            <div class="guide-control">
                                                <span class="arrow-up" style="display: none;">
                                                    <img class="up" src="https://file4.batdongsan.com.vn/images/tooltip/up-arrrow.png"></span>
                                                <span class="arrow-down">
                                                    <img class="up" src="https://file4.batdongsan.com.vn/images/tooltip/down-arrow.png"></span>
                                            </div>
                                        </div>
                                        <script>
                                            $(".guide-360-cnt").hide();
                                            $(".arrow-up").hide();
                                            function guid360() {
                                                $(".guide-360-cnt").slideToggle(500);
                                                $('.guide-control').find(".arrow-up, .arrow-down").toggle();
                                            }
                                            $(document).ready(function () {
                                                $(".guide-control").click(guid360);
                                            });
                                        </script>
                                        <div class="postrow" id="imgError" style="display: none; width: 100%; height: 30px;">
                                            <span class="errorMessage" style="display: none;">(*) Bạn đang đăng tin thường nên không thể đăng quá 8 ảnh.</span>
                                        </div>
                                        <span class="errorMessage" style="display: none;"></span>
                                        <div class="postrow product-video" style="width: 95%; margin-left: 20px; margin-bottom: 20px">
                                            <div class="form-group" style="width:0px">
                                            <div id="preview" style="display: flex;"></div> 
                                                <asp:FileUpload ID="FileUp" AllowMultiple ClientIDMode="Static" runat="server" />
                                            </div>
                                            <script>
                                                function previewImages() {
                                                    
                                                    var preview = document.querySelector('#preview');

                                                    if (this.files) {
                                                        [].forEach.call(this.files, readAndPreview);
                                                    }

                                                    function readAndPreview(file) {

                                                        // Make sure `file.name` matches our extensions criteria
                                                        if (!/\.(jpg|png|gif)$/i.test(file.name)) {
                                                            return alert(file.name + " is not an image");
                                                        } // else...

                                                        var reader = new FileReader();

                                                        reader.addEventListener("load", function () {
                                                            var image = new Image();
                                                            image.height = 100;
                                                            image.title = file.name;
                                                            image.src = this.result;
                                                            preview.appendChild(image);
                                                        });

                                                        reader.readAsDataURL(file);

                                                    }

                                                }

                                                document.querySelector('#FileUp').addEventListener("change", previewImages);
                                            </script>
                                            <p>
                                                Nếu bạn có nhu cầu Upload video, hãy liên hệ với chúng tôi để được hỗ trợ
                                            </p>
                                        </div>
                                    </div>
                                   
                                    <div id="finalError"></div>
                                    <div id="ctl30_ctl00_divButton" class="rowPost">
                                        <table style="border-collapse: collapse; width: 150px; margin: 0px auto;" border="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="btnSave" runat="server" Text="Đăng tin không cần tài khoản" UseSubmitBehavior="false" OnClick="btnSave_Click" />
                                                    </td>
                                                    <td>
                                                        <input id="btnCancel" type="button" value="Xem trước" class="orangebutton" onclick="ShowPreview()">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="clear"></div>
                                    <div style="margin-top: 10px;">
                                        <div><strong>Lưu ý:</strong></div>
                                        Quý khách đang sử dụng tính năng đăng tin nhanh của Batdongsan.com.vn. Tính năng
                        này giúp Quý khách có thể đăng tin ngay mà không cần phải đăng ký hay đăng nhập
                        như tại nhiều website khác. Tuy nhiên, để có thể quản lý được tin đăng của mình
                        thuận lợi hơn thì Quý khách nên đăng ký và đăng nhập. Việc này cũng giúp Quý khách
                        có thể đăng được nhiều tin hơn so với <strong>giới hạn tối đa 3</strong> tin <strong>
                            <i>rao vặt nhà đất</i></strong> khi Quý khách không đăng nhập.
                                    </div>
                                    <div style="margin-top: 10px; clear: both; float: left;">
                                        Nếu gặp bất kỳ khó khăn gì trong việc đăng ký, đăng nhập, đăng tin hay trong việc
                        sử dụng website nói chung, Quý vị hãy liên hệ ngay với tổng đài CSKH của chúng tôi: <strong>1900 1881</strong> hoặc email: <a href="mailto:hotro@batdongsan.com.vn"><strong>hotro@batdongsan.com.vn</strong></a>
                                        để được trợ giúp
                                    </div>
                                </div>
                                <input type="hidden" name="ctl00$ctl30$ctl00$hddLatitude" id="hddLatitude" value="21.02894860978742">
                                <input type="hidden" name="ctl00$ctl30$ctl00$hddLongtitude" id="hddLongtitude" value="105.85244722590335">
                                <input type="hidden" name="ctl00$ctl30$ctl00$hddSessionId" id="hddSessionId">
                                <input type="hidden" name="ctl00$ctl30$ctl00$hddIsMarkerDrag" id="hddIsMarkerDrag">
                                <script type="text/javascript">
                                    var googleMapLink = 'AIzaSyCg4HyabfReXQfgysV5XPG6YuAcrKLHfyw';
                                    //var filesv = 'https://file4.batdongsan.com.vn';
                                    var filesv = "https://filetemp.batdongsan.com.vn";
                                    var contentsv = 'https://content.batdongsan.com.vn';
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="RightMainContent" class="body-right">
                <div style="width: 240px;">
                    <div class="container-commom flatbox">
                        <div class="box-header">
                            <h3>Hướng dẫn đăng tin
                            </h3>
                        </div>
                        <div class="bor_box" style="border: 1px solid #ccc;">
                            <div class="boxtext">
                                <ul>
                                    <li>
                                        <div>
                                            Thông tin có dấu (<span style="color: #f00;">*</span>) là bắt buộc.
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            Không gộp nhiều bất động sản trong một tin rao.
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            Không đăng lại tin đã đăng trên www.batdongsan.com.vn.
                                        </div>
                                    </li>
                                </ul>
                                <div class="line-hr">
                                    &nbsp;
                                </div>
                                <ul>
                                    <li>
                                        <div>
                                            Để quá trình đăng tin và duyệt nhanh hơn, xin lưu ý: <span class="bluecolor">gõ tiếng việt có dấu và không viết tắt</span>...
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both; margin-bottom: 10px;"></div>
                    <div class="container-blank">
                        <div style="padding: 0 5px;">
                            <div class="html-content">
                                <h3 style="color: #319C00; line-height: 18px; font-size: 14px; margin-bottom: 10px;">Về Batdongsan.com.vn</h3>
                                <div style="text-align: justify; color: #666;">
                                    Batdongsan.com.vn được sử dụng bởi 4 triệu người dùng có nhu cầu tìm kiếm bất động sản với 70 triệu lượt xem trang mỗi tháng và được các công cụ đánh giá phổ biến nhất thế giới như Google, SimilarWeb xếp hạng là Kênh thông tin số 1 về bất động sản tại Việt Nam.Người tìm kiếm bất động sản có thể tìm thấy hầu hết các thông tin, dữ liệu về bất động sản và các tin tức thị trường, phong thủy, kiến trúc cũng như các tư vấn có ích từ Batdongsan.com.vn. Batdongsan.com.vn cũng là đối tác tin cậy và thường xuyên của hầu hết các chủ đầu tư, sàn giao dịch, nhà môi giới cá nhân tại Việt Nam.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="clear: both;"></div>
            </div>
            <div class="clear"></div>
            <div id="BreakcrumdBottom"></div>
            <div class="banner-bottom">
                <div id="SubBottomLeftMainContent" style="float: left; width: 560px"></div>
                <div id="SubBottomRightMainContent" style="float: left; width: 430px; margin-left: 5px">
                </div>
            </div>
            <div id="boxLinkFooter_boxLink" class="footer-link-new" style="height: 240px; overflow: hidden;">
                <ul>
                    <li>
                        <h4>Bất động sản đăng tin nhiều</h4>
                        <ul>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-grand-park-quan-9">Vinhomes Grand Park quận 9</a></li>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-metropolis-lieu-giai">Vinhomes Metropolis</a></li>
                            <li><a href="/ban-can-ho-chung-cu-sunshine-city">Sunshine City</a></li>
                            <li><a href="/ban-can-ho-chung-cu-tsg-lotus-sai-dong">TSG Lotus Sài Đồng</a></li>
                            <li><a href="/ban-can-ho-chung-cu-imperia-sky-garden">Imperia Sky Garden</a></li>
                            <li><a href="/ban-can-ho-chung-cu-sunshine-garden">Sunshine Garden</a></li>
                            <li><a href="/ban-can-ho-chung-cu-times-city">Times City</a></li>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-ocean-park-gia-lam">Vinhomes Ocean Park Gia Lâm</a></li>
                        </ul>
                    </li>
                    <li>
                        <h4>Hà Nội</h4>
                        <ul>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-smart-city-dai-mo">Vinhomes Smart City</a></li>
                            <li><a href="/ban-can-ho-chung-cu-sunshine-riverside">Sunshine Riverside</a></li>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-sky-lake">Vinhomes Sky Lake</a></li>
                            <li><a href="/ban-can-ho-chung-cu-kosmo-tay-ho">Kosmo Tây Hồ</a></li>
                            <li><a href="/ban-can-ho-chung-cu-mipec-xuan-thuy">Mipec Rubik 360</a></li>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-gardenia">Vinhomes Gardenia</a></li>
                            <li><a href="/nha-dat-ban-nam-tu-liem">Nhà đất Nam Từ Liêm</a></li>
                            <li><a href="/ban-can-ho-chung-cu-ha-noi">Chung cư giá rẻ Hà Nội</a></li>
                        </ul>
                    </li>
                    <li>
                        <h4>Hồ Chí Minh</h4>
                        <ul>
                            <li><a href="/ban-can-ho-chung-cu-celadon-city">Celadon City</a></li>
                            <li><a href="/ban-can-ho-chung-cu-vinhomes-central-park">Vinhomes Central Park</a></li>
                            <li><a href="/ban-can-ho-chung-cu-masteri-thao-dien">Masteri Thảo Điền</a></li>
                            <li><a href="/ban-can-ho-chung-cu-the-sun-avenue">The Sun Avenue</a></li>
                            <li><a href="/ban-can-ho-chung-cu-hado-centrosa-garden">HaDo Centrosa Garden</a></li>
                            <li><a href="/ban-nha-rieng-quan-12">Bán nhà Quận 12</a></li>
                            <li><a href="/nha-dat-ban-quan-9">Bán nhà Quận 9</a></li>
                            <li><a href="/nha-dat-ban-binh-thanh">Bán nhà Bình Thạnh</a></li>
                        </ul>
                    </li>
                    <li>
                        <h4>Nhà đất bán</h4>
                        <ul>
                            <li><a href="/nha-dat-ban-quy-nhon-bdd">Bán nhà Quy Nhơn</a></li>
                            <li><a href="/ban-can-ho-chung-cu-vung-tau-pearl">Vũng Tàu Pearl</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <script type="text/javascript">
                if ($("#boxLinkFooter_boxLink").height() >= 240) { $("#boxLinkFooter_boxLink").css("height", "240px"); $("#boxLinkFooter_boxLink").css("overflow", "hidden") }
            </script>
            <style type="text/css">
                .footer-link-new {
                    border-bottom: 1px solid #ccc;
                    border-top: 1px solid #ccc;
                    display: inline-block;
                    margin: 10px 0;
                    padding: 10px 0;
                    width: 100%;
                }

                    .footer-link-new ul li {
                        display: inline-block;
                        margin-right: 15px;
                        width: 183px;
                        overflow: hidden;
                        vertical-align: top;
                    }

                        .footer-link-new ul li:last-child {
                            margin-right: 0;
                        }

                        .footer-link-new ul li li {
                            display: block;
                            width: 100%;
                        }

                .auto-style1 {
                    width: 725px;
                }

                .auto-style2 {
                    border-radius: 4px;
                    width: 107px;
                    border: 1px solid #a0a0a0;
                    padding: 4px 1px;
                }
                .auto-style3 {
                    position: absolute;
                    right: 0px;
                    top: 0px;
                    cursor: pointer;
                }
            </style>
        </div>

    </div>
</asp:Content>
