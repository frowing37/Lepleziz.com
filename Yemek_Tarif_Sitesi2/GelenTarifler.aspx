<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GelenTarifler.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.GelenTarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            color: #15155B;
            font-size: large;
        }
        .auto-style16 {
            font-size: large;
            color: #0F0F68;
        }
        .auto-style17 {
            text-align: center;
            width: 441px;
        }
        .auto-style18 {
            text-align: center;
            width: 2853px;
        }
        .auto-style20 {
            text-align: center;
            width: 9902px;
        }
        .auto-style21 {
            width: 11124px;
        }
        .auto-style22 {
            text-align: center;
            width: 669px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="697px">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style21"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("TarifAdi") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style20"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style16" Text='<%# Eval("TarifSahip") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style18">
                       <a href="GelenTarifDetay.aspx?TarifID=<%#Eval("TarifID") %>"> <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/REsimler/devam.png" Width="35px" /></a>
                    </td>
                    <td class="auto-style17">
                        <a href="GelenTarifler.aspx?TarifID=<%#Eval("TarifID") %>&islem=sil"><asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/REsimler/delete-icon-png-19.jpg" Width="35px" /></a>
                    </td>
                    <td class="auto-style10">
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("TarifDurum") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
