<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style6">
    <tr>
        <td style="width: 177px; text-align: center">Tarif Adı:</td>
        <td>
            <asp:TextBox ID="TarifAdi" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 177px; text-align: center">Malzemeler:</td>
        <td>
            <asp:TextBox ID="Malzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 177px; text-align: center">Yapılış:</td>
        <td>
            <asp:TextBox ID="Yapilis" runat="server" Height="133px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 177px; text-align: center">Resim:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="width: 177px; text-align: center">Tarifi Öneren Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TarifSahip" runat="server" Width="200px" Height="16px" style="margin-bottom: 0px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 177px; text-align: center">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="mail" runat="server" TextMode="Email" ToolTip=" " Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 177px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="129px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
