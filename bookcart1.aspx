<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookcart1.aspx.cs" Inherits="bookcart1" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 925px; top: 64px; position: absolute" Text="Logout" />
        </span><br />
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
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 120px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none" PostBackUrl="~/welcome.aspx">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 11px; top: 159px; position: absolute; height: 459px; width: 230px;">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000066" style="z-index: 1; left: 53px; top: 152px; position: absolute; font-size: x-large;  font-weight: 700; background-color: #CCFFFF; width: 127px;" Height="29px" PostBackUrl="~/view_books.aspx">Computers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 42px; top: 262px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/view_books2.aspx">Entertainment</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 30px; top: 372px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/view_books1.aspx">Childrens Books</asp:LinkButton>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 330px; top: 324px; position: absolute; height: 26px" Text="Clear cart" />
                <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 471px; top: 0px; position: absolute; height: 133px; width: 187px" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" />
                      <Columns>
                             <asp:CommandField ShowDeleteButton="True" />
                             <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("bookname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="image">
                                <ItemTemplate>
                                   <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image") %>' Height="100px" Width="100px" />
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("price") %>'></asp:Label>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookcartConnectionString %>" SelectCommand="SELECT * FROM [bookcart4]" DeleteCommand="DELETE FROM [bookcart4] WHERE [id] = @id" InsertCommand="INSERT INTO [bookcart4] ([id], [bookname], [image], [price]) VALUES (@id, @bookname, @image, @price)" UpdateCommand="UPDATE [bookcart4] SET [bookname] = @bookname, [image] = @image, [price] = @price WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookname" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 890px; top: 326px; position: absolute; height: 26px" Text="proceed to buy" />
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" style="z-index: 1; left: 33px; top: 61px; position: absolute" Text="Books Category"></asp:Label>
            </asp:Panel>
            <br />
            <br />
        </asp:Panel>
            <div class="auto-style3">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; 
    </form>
</body>
</html>
