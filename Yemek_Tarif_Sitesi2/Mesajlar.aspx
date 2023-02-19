<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: medium;
            color: #0F1675;
        }
        .auto-style16 {
            width: 313px;
            background-color: #CCCCCC;
        }
        .auto-style17 {
            width: 120px;
            background-color: #CCCCCC;
        }
        .auto-style19 {
            width: 161px;
            background-color: #CCCCCC;
        }
        .auto-style20 {
            font-size: large;
            color: #121D7E;
        }
        .auto-style21 {
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style22 {
            color: #101A70;
        }
        .auto-style23 {
            font-size: large;
            color: #121E83;
            text-align: center;
            height: 32px;
            background-color: #CCCCCC;
        }
        .auto-style24 {
            font-size: large;
            text-align: center;
            color: #131F84;
            height: 32px;
            width: 288px;
            background-color: #CCCCCC;
        }
        .auto-style25 {
            font-size: large;
            text-align: center;
            color: #14208B;
            height: 32px;
            width: 112px;
            background-color: #CCCCCC;
        }
        .auto-style26 {
            font-size: large;
            color: #121D81;
            text-align: center;
            height: 32px;
            width: 168px;
            background-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style26" style="border: medium groove #0F1766"><strong>Mesaj Sahibi</strong></td>
            <td class="auto-style25" style="border: medium groove #0F1766"><strong>Mesaj Tarihi</strong></td>
            <td class="auto-style24" style="border: medium groove #0F1766"><strong>İçerik</strong></td>
            <td class="auto-style23" style="border: medium groove #0F1766"><strong>Silme</strong></td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server" Width="697px">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style19" style="border: thin groove #101A74;"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("MesajAdSoyad") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style17" style="border: thin groove #101A74;"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text='<%# Eval("MesajTarih") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style16" style="border: thin groove #101A74;"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style22" Text='<%# Eval("MesajIcerik") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style21" style="border: thin groove #101A74;">
                       <a href="Mesajlar.aspx?MesajID=<%#Eval("MesajID") %>%islem=sil"> <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/REsimler/delete-icon-png-19.jpg" Width="35px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
