<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumlarAdmin.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.YorumlarAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: x-large;
            color: #18186A;
        }
        .auto-style16 {
            text-align: center;
            background-color: #C0C0C0;
            width: 8170px;
        }
        .auto-style19 {
            background-color: #C0C0C0;
        }
        .auto-style20 {
            font-size: x-large;
            text-align: center;
            color: #18186A;
            background-color: #C0C0C0;
        }
        .auto-style21 {
            text-align: center;
            width: 530px;
        }
        .auto-style22 {
            text-align: center;
            width: 2483px;
        }
        .auto-style23 {
            text-align: center;
            width: 6910px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <table class="auto-style14">
            <tr>
                <td class="auto-style20"><strong><span class="auto-style19">Yemek</span></strong></td>
                <td class="auto-style20"><strong><span class="auto-style19">Yorum Yapan</span></strong></td>
                <td class="auto-style20"><strong><span class="auto-style19">Yayın Durumu</span></strong></td>
            </tr>
        </table>
    </div>
    <br />
    <asp:DataList ID="DataList1" runat="server" Width="698px">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style16" style="border-style: solid; border-color: #18186A"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style23"><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                    <td class="auto-style22">
                       <a href="YorumAdminDetay.aspx?YorumID=<%#Eval("YorumID") %>"> <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/REsimler/devam.png" Width="35px" /></a>
                    </td>
                    <td class="auto-style10">
                        <a href="YorumlarAdmin.aspx?YorumID=<%#Eval("YorumID") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/REsimler/delete-icon-png-19.jpg" Width="35px" /></a>
                    </td>
                    <td class="auto-style10">
                       <a href="YorumlarAdmin.aspx?YorumID=<%#Eval("YorumID") %>&onay=true"><asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("YorumOnay") %>' /></a> 
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
