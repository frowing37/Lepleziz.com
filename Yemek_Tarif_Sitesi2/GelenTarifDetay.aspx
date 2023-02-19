<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GelenTarifDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.GelenTarifDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: large;
            color: #141456;
        }
        .auto-style17 {
            color: #171766;
            font-size: large;
            text-align: right;
            width: 300px;
        }
        .auto-style18 {
            font-size: large;
            color: #0D0D51;
            text-align: right;
            width: 300px;
        }
        .auto-style19 {
            font-size: large;
            color: #141456;
            text-align: right;
            width: 300px;
        }
        .auto-style20 {
            text-align: right;
            width: 300px;
        }
        .auto-style21 {
            color: #171766;
            font-size: large;
            text-align: center;
        }
        .auto-style22 {
            font-size: xx-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style20"><span class="auto-style15"><strong>Tarif Adı :</strong></span> </td>
            <td>
                <asp:TextBox ID="tad" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Sahibi : </strong></td>
            <td>
                <asp:TextBox ID="tsah" runat="server" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Malzemeler : </strong></td>
            <td>
                <asp:TextBox ID="tmal" runat="server" Height="76px" TextMode="MultiLine" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yapılış : </strong></td>
            <td>
                <asp:TextBox ID="tyap" runat="server" Height="126px" TextMode="MultiLine" Width="289px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Onay Durumu : </strong></td>
            <td>&nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><span class="auto-style22">&nbsp;</span></td>
            <td><span class="auto-style22">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="23px" OnClick="Button1_Click" Text="Güncelle" Width="144px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2"><span class="auto-style22">&nbsp;</span></td>
        </tr>
    </table>
</asp:Content>
