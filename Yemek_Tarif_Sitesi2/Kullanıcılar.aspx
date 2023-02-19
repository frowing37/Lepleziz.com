<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kullanıcılar.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.Kullanıcılar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            text-align: center;
            width: 463px;
        }
        .auto-style17 {
            text-align: center;
            width: 651px;
        }
        .auto-style18 {
            width: 1818px;
        }
        .auto-style20 {
            width: 1636px;
        }
        .auto-style21 {
            font-size: x-large;
            color: #111C7B;
        }
        .auto-style22 {
            font-size: large;
            color: #111C79;
        }
        .auto-style23 {
            font-size: large;
            color: #121D81;
        }
        .auto-style24 {
            height: 23px;
            color: #121D81;
            font-size: large;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style25 {
            height: 23px;
            font-size: large;
            color: #101A70;
            text-decoration: underline;
            text-align: center;
            width: 166px;
            background-color: #CCCCCC;
        }
        .auto-style26 {
            height: 23px;
            color: #0E1663;
            font-size: large;
            text-decoration: underline;
            text-align: center;
            width: 143px;
            background-color: #CCCCCC;
        }
        .auto-style28 {
            height: 23px;
            text-decoration: underline;
            color: #101A6D;
            font-size: large;
            text-align: center;
            width: 48px;
            background-color: #CCCCCC;
        }
        .auto-style29 {
            height: 23px;
            text-decoration: underline;
            color: #101A6D;
            font-size: large;
            text-align: center;
            width: 144px;
            background-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style25" style="border: medium groove #000080"><strong>Kullanıcı İsmi</strong></td>
            <td class="auto-style26" style="border: medium groove #000080"><strong>Mail</strong></td>
            <td class="auto-style29" style="border: medium groove #000080"><strong>Şifre</strong></td>
            <td class="auto-style28" style="border: medium groove #000080"><strong>Sil</strong></td>
            <td class="auto-style24" style="border: medium groove #000080"><strong>Admin Yap</strong></td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style20" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;">
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text='<%# Eval("KullanıcıAd") %>'></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style18" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;">
                        <strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style23" Text='<%# Eval("KullanıcıMail") %>'></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style18" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style22" Text='<%# Eval("KullanıcıSifre") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style17" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;">
                       <a href="Kullanıcılar.aspx?KullanıcıID=<%#Eval("KullanıcıID") %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/REsimler/delete-icon-png-19.jpg" Width="35px" /></a>
                    </td>
                    <td class="auto-style16" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;">
                       <a href="Kullanıcılar.aspx?KullanıcıID=<%#Eval("KullanıcıID") %>&islem=adminyap"> <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/REsimler/png-clipart-triangle-point-green-leaf-up-arrow-file-angle-web-design.png" Width="35px" /></a>
                    </td>
                    <td class="auto-style16" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;">
                       <a href="Kullanıcılar.aspx?KullanıcıID=<%#Eval("KullanıcıID") %>&islem=adminsil"> <asp:Image ID="Image4" runat="server" Height="35px" ImageUrl="~/REsimler/png-transparent-arrows-down-red-glossy.png" Width="35px" /></a>
                    </td>
                    <td class="auto-style10" style="border-style: groove dashed groove dashed; border-width: thin; border-color: #99A2F0;">
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("Admin") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
