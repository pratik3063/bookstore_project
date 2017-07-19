<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_viewbook.aspx.cs" Inherits="admin_bookadd" %>

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
            width: 100%;
            height: 20px;
            position: absolute;
            left: 13px;
            /*top: 690px;*/
            bottom:-23px;
        }
        .auto-style4 {
            font-size: large;
            color: #000066;
            font-weight: 700;
            background-color: #FFFFCC;
            z-index: 1;
            left: 443px;
            top: 0px;
            position: absolute;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong>Pratik Book Stores</strong></span><br />
        <br />
        <br />
        <div style="height: 51px">
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 348px; top: 119px; position: absolute; text-decoration:none; font-weight: 700; font-size: x-large; width: 102px; color: #000000; background-color: #FFFFCC;" Height="29px" PostBackUrl="~/aboutus1.aspx">About us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1; top: 119px; position: absolute; height:29px; font-size: x-large; background-color: #FFFFCC;text-decoration:none; left: 584px;" Font-Bold="True" ForeColor="Black" PostBackUrl="~/contactus.aspx">Contact us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton7" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" PostBackUrl="~/admin_add_books.aspx" style="z-index: 1; left: 804px; text-decoration:none; top: 122px; position: absolute">Add books</asp:LinkButton>
        </div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="14.1cm">
            <asp:Panel ID="Panel2" runat="server" Height="57px" style="background-color: #000066">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" style="z-index: 1; left: 114px; top: 117px; position: absolute; font-weight: 700; height: 29px; color: #000000; width: 66px; font-size: x-large; background-color: #FFFFCC;text-decoration:none" PostBackUrl="~/admin_viewbook.aspx">Home</asp:LinkButton>
            </asp:Panel>
            &nbsp;<asp:Panel ID="Panel3" runat="server" style="border:5px solid #CC0000; font-weight: 700; background-color: #CCFFFF; margin-top: 0px; z-index: 1; left: 10px; top: 157px; position: absolute; height: 451px; width: 225px;">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#000066" style="z-index: 1; left: 48px; top: 112px; position: absolute; font-size: x-large;  font-weight: 700; background-color: #CCFFFF; width: 120px;" Height="29px" PostBackUrl="~/admin_viewbook.aspx">Computers</asp:LinkButton>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 34px; top: 195px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/admin_viewbook1.aspx">Entertainment</asp:LinkButton>
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 29px; top: 278px; position: absolute; font-size: x-large; background-color: #CCFFFF;  color: #000066;" PostBackUrl="~/admin_viewbook2.aspx">Childrens books</asp:LinkButton>


                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" style="z-index: 1; left: 33px; top: 28px; position: absolute" Text="Books category"></asp:Label>


            </asp:Panel>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" style="z-index: 1; left: 405px; top: 167px; position: absolute; height: 133px; width: 187px" DataKeyNames="ID" DataSourceID="SqlDataSource1">
              <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="image">
                                <ItemTemplate>
                                   <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("image") %>' Height="100px" Width="100px" />
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ISBN">
                                <ItemTemplate>
                    
                                    <asp:Label ID="lbl1" runat="server" Text='<%#Eval("ISBN") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookcartConnectionString %>" DeleteCommand="DELETE FROM [bookadd] WHERE [ID] = @ID" InsertCommand="INSERT INTO [bookadd] ([Name], [Image], [Price], [ISBN]) VALUES (@Name, @Image, @Price, @ISBN)" SelectCommand="SELECT * FROM [bookadd]" UpdateCommand="UPDATE [bookadd] SET [Name] = @Name, [Image] = @Image, [Price] = @Price, [ISBN] = @ISBN WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="ISBN" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="ISBN" Type="Decimal" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
            <div class="auto-style3" style="z-index: 1">
                &nbsp;<span class="auto-style4">&copy; 2017 Pratik book stores&nbsp; </span></div>
    </form>
</body>
</html>

