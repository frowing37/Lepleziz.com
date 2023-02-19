<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style11" colspan="2" style="text-align: center; height: 12px; background-color: #DB91FF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2" style="text-align: center; height: 12px; background-color: #DB91FF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2" style="text-align: center; font-size: large; background-color: #FFFFFF">Bize Site Üzerinden de Ulaşabilirsiniz !</td>
        </tr>
        <tr>
            <td class="auto-style11" style="font-size: large; text-align: right; background-color: #DB91FF">
                <br />
                İsim Soyisim :</td>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">
                <br />
                <asp:TextBox ID="Madsoyad" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right; font-size: large; background-color: #DB91FF">Mail :</td>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">
                <asp:TextBox ID="Mmail" runat="server" TextMode="Email" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: right; font-size: large; background-color: #DB91FF">İstek &amp; Şikayetiniz :</td>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">
                <asp:TextBox ID="Micerik" runat="server" Height="61px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">&nbsp;</td>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">
                <asp:Button ID="gonder" runat="server" Text="Gönder" Width="200px" OnClick="gonder_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">&nbsp;</td>
            <td class="auto-style11" style="text-align: center; font-size: large; background-color: #DB91FF">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
