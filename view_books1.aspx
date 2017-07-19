<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_books1.aspx.cs" Inherits="view_books1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #FFFFCC;
            height: 89px;
        }
        .auto-style2 {
            color: #000066;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
            color: #000066;
            background-color: #000066;
        }
        .auto-style4 {
            font-size: large;
            color: #000066;
            font-weight: 700;
            background-color: #FFFFCC;
        }
        </style>
</head>
    <script type="text/javascript" src="javascript/changingimage3.js"></script>

<body onload="startTime();" >
    <form id="form1" runat="server">
    <div class="auto-style1">
    <marquee style="top:0px;font-weight:bold;color:#CC0000;font-size:large"> Welcome to pratik book stores</marquee>
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/books-icon.png" style="z-index: 1; left: 526px; top: 29px; position: absolute; width: 69px; height: 48px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong><asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/shop-cart-icon.png" NavigateUrl="~/bookcart1.aspx" style="z-index: 1; left: 1216px; top: 44px; position: absolute">HyperLink</asp:HyperLink>
        </span>
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" style="z-index: 1; left: 1263px; top: 58px; position: absolute" Text="(0)"></asp:Label>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 990px; top: 59px; position: absolute" Text="Logout" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Large" style="z-index: 1; left: 1178px; top: 62px; position: absolute" Text="Cart"></asp:Label>
        <br />
        <br />
        <div style="height: 51px">
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 348px; top: 119px; position: absolute; text-decoration:none; font-weight: 700; font-size: x-large; width: 102px; color: #000000; background-color: #FFFFCC;" Height="29px" PostBackUrl="~/aboutus2.aspx">About us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1; top: 119px; position: absolute; height:29px; font-size: x-large; background-color: #FFFFCC;text-decoration:none; left: 584px;" Font-Bold="True" ForeColor="Black" PostBackUrl="~/contactus2.aspx">Contact us</asp:LinkButton>
        </div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14.1cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 117px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none" PostBackUrl="~/welcome.aspx">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 10px; top: 163px; position: absolute; height: 463px; width: 212px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 469px; top: -13px; position: absolute; height: 133px; width: 187px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="image">
                                <ItemTemplate>
                                   <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image") %>' Height="100px" Width="100px" />
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ISBN">
                                <ItemTemplate>
                    
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("ISBN") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 914px; top: 55px; position: absolute" Text="Add to cart" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 916px; top: 159px; position: absolute" Text="Add to cart" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 918px; top: 251px; position: absolute" Text="Add to cart" />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="z-index: 1; left: 920px; top: 372px; position: absolute" Text="Add to cart" />
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="#000066" style="z-index: 1; left: 20px; top: 61px; position: absolute" Text="Books Category"></asp:Label>
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/view_books.aspx" style="z-index: 1; left: 49px; top: 147px; position: absolute">Computers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/view_books1.aspx" style="z-index: 1; left: 33px; top: 237px; position: absolute">Entertainment</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/view_books2.aspx" style="z-index: 1; left: 27px; top: 336px; position: absolute">Childrens Books</asp:LinkButton>
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>

