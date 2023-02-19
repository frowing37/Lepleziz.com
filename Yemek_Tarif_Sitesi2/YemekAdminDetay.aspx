<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekAdminDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.YemekAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: xx-large;
            color: #18186A;
        }
        .auto-style15 {
            background-color: #C0C0C0;
        }
        .auto-style16 {
            height: 453px;
        }
        .auto-style17 {
            width: 100%;
        }
        .auto-style18 {
            font-size: x-large;
            color: #18186A;
            text-align: right;
        }
        .auto-style19 {
            text-align: left;
        }
        .auto-style20 {
            font-size: xx-small;
            color: #18186A;
            text-align: right;
        }
        .auto-style21 {
            font-size: xx-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="#18186A" BorderStyle="Groove" BorderWidth="2px" CssClass="auto-style15">
        <div class="auto-style10">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text="Label"></asp:Label>
            </strong><span class="auto-style14"><strong>-Değişiklikler</strong></span>
        </div>
    </asp:Panel>
    <div class="auto-style16">
        <table class="auto-style17">
            <tr>
                <td class="auto-style20">&nbsp;&nbsp;</td>
                <td class="auto-style19"><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Yemek İsmi : </strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="yad" runat="server" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td class="auto-style19"><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Malzemeler :</strong></td>
                <td>
                    <asp:TextBox ID="ymal" runat="server" Height="106px" TextMode="MultiLine" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Tarif : </strong></td>
                <td>
                    <asp:TextBox ID="ytar" runat="server" Height="107px" TextMode="MultiLine" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Resim : </strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori : </strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="202px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Button ID="guncelle" runat="server" Height="22px" OnClick="guncelle_Click" Text="Güncelle" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><span class="auto-style21">&nbsp;</span></td>
                <td><span class="auto-style21">&nbsp;</span></td>
            </tr>
        </table>
    </div>
</asp:Content>
