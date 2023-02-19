<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td colspan="2" style="background-color: #CC00CC"><a href="YemekDetay.aspx?yemekid=<%# Eval("YemekID") %>">
                    <asp:Label ID="Label3" runat="server" ForeColor="White" style="font-size: xx-large; text-decoration: underline" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td colspan="2"><span style="font-size: x-large"><span style="text-decoration: underline">Malzemeler</span> : </span>
                    <asp:Label ID="Label4" runat="server" style="font-size: large" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><span style="font-size: x-large"><span style="text-decoration: underline">Tarif</span> :</span>
                    <asp:Label ID="Label5" runat="server" style="font-size: large" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="261px" ImageUrl='<%# Eval("YemekResim") %>' Width="354px" />
                </td>
            </tr>
            <tr>
                <td><span style="font-size: x-large"><span style="text-decoration: underline">Eklenme</span> <span style="text-decoration: underline">Tarihi</span> :</span>
                    <asp:Label ID="Label6" runat="server" style="font-size: large" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
                <td><span style="font-size: x-large"><span style="text-decoration: underline">Puan</span> :</span>
                    <asp:Label ID="Label7" runat="server" style="font-size: large" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><span style="font-size: x-large"><span style="text-decoration: underline">Kategori</span> :</span>
                    <asp:Label ID="Label8" runat="server" style="font-size: large" Text='<%# Eval("Kategori") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #5E005E">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
