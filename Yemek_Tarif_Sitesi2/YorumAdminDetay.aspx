<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumAdminDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.YorumAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: large;
            color: #18186A;
            text-align: right;
            height: 24px;
            width: 340px;
        }
        .auto-style16 {
            font-size: large;
            color: #121265;
        }
        .auto-style17 {
            font-size: large;
            color: #101069;
            text-align: right;
            width: 340px;
        }
        .auto-style18 {
            color: #141456;
            font-size: large;
            text-align: right;
            width: 340px;
        }
        .auto-style19 {
            height: 24px;
        }
        .auto-style20 {
            text-align: right;
            width: 340px;
        }
        .auto-style21 {
            font-size: large;
            color: #101069;
        }
        .auto-style22 {
            font-size: large;
            color: #101069;
            background-color: #C0C0C0;
        }
        .auto-style23 {
            font-size: xx-small;
        }
        .auto-style24 {
            font-size: large;
            color: #18186A;
            text-align: right;
            height: 3px;
            width: 340px;
        }
        .auto-style25 {
            height: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style15"><strong>Yorum Sahibi : </strong></td>
            <td class="auto-style19"><strong>
                <asp:Label ID="yad" runat="server" CssClass="auto-style21" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style24"><span class="auto-style23">&nbsp;</span></td>
            <td class="auto-style25"><span class="auto-style23">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style20"><strong><span class="auto-style16">Yorum İcerik :</span></strong> </td>
            <td><strong>
                <asp:Label ID="yic" runat="server" CssClass="auto-style21" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style20"><span class="auto-style23">&nbsp;</span></td>
            <td><span class="auto-style23">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Yemek : </strong></td>
            <td><strong>
                <asp:Label ID="yy" runat="server" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style22" Text="Label"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style23">&nbsp;</span></td>
            <td><span class="auto-style23">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yorum Onay Durumu :</strong></td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><span class="auto-style23">&nbsp;</span></td>
            <td><span class="auto-style23">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" Text="Güncelle" Width="108px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2"><span class="auto-style23">&nbsp;</span></td>
        </tr>
    </table>
</asp:Content>
