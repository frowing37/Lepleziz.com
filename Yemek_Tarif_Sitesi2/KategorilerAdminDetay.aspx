<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategorilerAdminDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.KategorilerAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
            color: #181895;
        }
        .auto-style15 {
            background-color: #808080;
        }
        .auto-style17 {
            width: 100%;
            background-color: #7D87E3;
        }
        .auto-style18 {
            color: #181895;
            font-size: large;
            text-align: right;
        }
        .auto-style19 {
            color: #181895;
            font-size: xx-small;
            text-align: right;
            height: 2px;
        }
        .auto-style20 {
            height: 2px;
            font-size: xx-small;
        }
        .auto-style21 {
            font-size: xx-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" Height="35px">
        <div class="auto-style10">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text="Label"></asp:Label>
            </strong>&nbsp;<span class="auto-style14"><strong>- Düzenle</strong></span></div>
        <table class="auto-style17">
            <tr>
                <td class="auto-style18" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategorinin İsmi :</strong></td>
                <td>
                    <asp:TextBox ID="kisim" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori Adedi : </strong></td>
                <td>
                    <asp:TextBox ID="kaded" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp; </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori Resmi : </strong></td>
                <td>
                    <asp:FileUpload ID="kresim" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">
                   <asp:Button ID="Button1" runat="server" Height="20px" OnClick="Button1_Click" Text="Güncelle" Width="116px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
