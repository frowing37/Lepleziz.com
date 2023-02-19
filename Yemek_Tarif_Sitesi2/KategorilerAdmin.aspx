<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategorilerAdmin.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.KategorilerAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
        background-color: #C0C0C0;
    }
    .auto-style16 {
        width: 100%;
        height: 38px;
    }
    .auto-style17 {
        color: #18186A;
        font-size: x-large;
        text-align: center;
    }
    .auto-style18 {
        width: 100%;
        height: 56px;
        margin-bottom: 0px;
        background-color: #7D87E3;
    }
    .auto-style19 {
        font-size: x-large;
        color: #18186A;
    }
    .auto-style20 {
        font-size: xx-small;
    }
    .auto-style21 {
        height: 1px;
    }
    .auto-style23 {
        background-color: #7D87E3;
        width:350px;
    }
    .auto-style24 {
        width: 100%;
    }
    .auto-style25 {
        font-size: large;
        text-align: right;
        color: #18186A;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <div style="width:350px;height:50px;float:left;">
            <asp:Panel ID="Panel1" runat="server" BorderColor="#181879" BorderStyle="Solid" CssClass="auto-style15" Height="37px">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button1" runat="server" Height="25px" OnClick="Button1_Click" Text="+" Width="25px" />
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="Button2" runat="server" Height="25px" OnClick="Button2_Click" Text="-" Width="25px" />
                        </td>
                        <td class="auto-style17"><strong>Kategori Listesi</strong></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style23">
                    <ItemTemplate>
                        <table class="auto-style18">
                            <tr>
                                <td style="border: thin hidden #7D87E3; padding: inherit; margin: inherit;">
                                    <asp:Image ID="Image4" runat="server" Height="15px" ImageUrl="~/REsimler/tik1.jpg" Width="15px" />
                                    &nbsp; <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                    &nbsp;</strong><span class="auto-style19"><strong>- (<asp:Label ID="Label2" runat="server" Text='<%# Eval("KategoriAdet") %>'></asp:Label>
                                    )</strong></span></td>
                                <td class="auto-style10" style="border: thin hidden #7D87E3; padding: inherit; margin: inherit;">
                                   <a href="KategorilerAdmin.aspx?KategoriID=<%#Eval("KategoriID")%>&islem=sil"><asp:Image ID="Image5" runat="server" ImageUrl="~/REsimler/delete-icon-png-19.jpg" Width="35px" /></a> 
                                </td>
                                <td class="auto-style10" style="border: thin hidden #7D87E3; padding: inherit; margin: inherit;">
                                  <a href="KategorilerAdminDetay.aspx?KategoriID=<%#Eval("KategoriID") %>"> <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/REsimler/update-png.jpg" Width="35px" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21" style="border: thin dashed #7D87E3; padding: inherit; margin: inherit;" colspan="3"><span class="auto-style20">&nbsp;&nbsp;</span></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </div>
        <div style="width:350px;height:50px;float:left;">
            <asp:Panel ID="Panel5" runat="server" BorderColor="#18186A" BorderStyle="Solid" CssClass="auto-style15" Height="37px">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button3" runat="server" Height="25px" OnClick="Button3_Click" Text="+" Width="25px" />
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="Button4" runat="server" Height="25px" OnClick="Button4_Click" Text="-" Width="25px" />
                        </td>
                        <td class="auto-style17"><strong>Kategori Ekleme</strong></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style23">
                <table class="auto-style24">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25"><strong>Kategori Adı :</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button5" runat="server" Height="22px" Text="Ekle" Width="93px" OnClick="Button5_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
    
    
</asp:Content>
