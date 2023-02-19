<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: x-large;
            text-align: right;
        }
        .auto-style16 {
            font-size: x-large;
            text-align: right;
            color: #101A74;
        }
        .auto-style17 {
            color: #101A74;
        }
        .auto-style18 {
            font-size: xx-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong><span class="auto-style17">İçerik Kısmı :</span>&nbsp;&nbsp; </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="161px" TextMode="MultiLine" Width="299px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>İçerik Fotoğrafı :&nbsp;&nbsp; </strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="305px" />
            </td>
        </tr>
        <tr>
            <td><span class="auto-style18">&nbsp;</span></td>
            <td><span class="auto-style18">&nbsp;</span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" Text="Güncelle" Width="180px" />
            </td>
        </tr>
        <tr>
            <td><span class="auto-style18">&nbsp;</span></td>
            <td><span class="auto-style18">&nbsp;</span></td>
        </tr>
    </table>
</asp:Content>
