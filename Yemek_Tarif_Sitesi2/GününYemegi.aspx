<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GününYemegi.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.GününYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <p style="text-align: center; font-size: x-large">
        Günün Yemeği</p>
    <p style="text-align: center; font-size: x-large">
       <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style11" style="text-align: center">
                            <asp:Label ID="Label3" runat="server" style="font-size: xx-large" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11"><span>Malzemeler :</span><span style="font-size: large"> </span>
                            <asp:Label ID="Label4" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11"><span>Tarif :</span><span style="font-size: large"> </span>
                            <asp:Label ID="Label5" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="242px" ImageUrl='<%# Eval("GununYemegiResim") %>' Width="391px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Puan :
                            <asp:Label ID="Label7" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Tarih :
                            <asp:Label ID="Label8" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
