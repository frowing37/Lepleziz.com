<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekAdmin.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.YemekAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            font-size: x-large;
            color: #18187F;
        }
        .auto-style16 {
            background-color: #C0C0C0;
        }
        .auto-style17 {
            text-align: center;
            background-color: #7E8BFE;
        }
        .auto-style18 {
            font-size: xx-small;
        }
        .auto-style19 {
            width: 100%;
            height: 53px;
        }
        .auto-style20 {
            margin-top: 6px;
            background-color: #7E8BFE;
        }
        .auto-style21 {
            width: 100%;
            height: 52px;
        }
        .auto-style22 {
            color: #18188A;
            font-size: large;
        }
        .auto-style25 {
            font-size: large;
            color: #18187F;
        }
        .auto-style26 {
            width: 350px;
            float: left;
            height: 325px;
        }
        .auto-style27 {
            background-color: #7E8BFE;
        }
        .auto-style28 {
            text-align: center;
            height: 20px;
        }
        .auto-style29 {
            width: 169px;
        }
        .auto-style32 {
            text-align: left;
        }
        .auto-style33 {
            text-align: right;
            width: 152px;
        }
        .auto-style34 {
            font-size: large;
            text-align: right;
            color: #18187F;
            width: 152px;
        }
        .auto-style35 {
            text-align: right;
            width: 169px;
        }
        .auto-style36 {
            font-size: large;
            text-align: right;
            color: #18187F;
            width: 169px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
        <div style="width:350px;float:left;">
            <asp:Panel ID="Panel1" runat="server" Height="49px" CssClass="auto-style16">
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button1" runat="server" Text="+" Height="25px" Width="25px" OnClick="Button1_Click1" />
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="Button2" runat="server" Text="-" Height="25px" Width="25px" OnClick="Button2_Click"  />
                        </td>
                        <td class="auto-style15"><strong>Yemek Listesi</strong></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style20">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="auto-style14">
                            <tr>
                                <td class="auto-style10">
                                    <asp:Image ID="Image2" runat="server" Height="15px" ImageUrl="~/REsimler/tik1.jpg" Width="15px" />
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                </td>
                                <td class="auto-style10">
                                   <a href="YemekAdmin.aspx?YemekID=<%#Eval("YemekID") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/REsimler/delete-icon-png-19.jpg" Width="35px" /></a>
                                </td>
                                <td class="auto-style10">
                                   <a href="YemekAdminDetay.aspx?YemekID=<%#Eval("YemekID") %>"> <asp:Image ID="Image4" runat="server" Height="35px" ImageUrl="~/REsimler/update-png.jpg" Width="35px" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style17" colspan="4"><span class="auto-style18">&nbsp;</span></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
            </div>
        <div class="auto-style26">
            <asp:Panel ID="Panel2" runat="server" Height="50px" CssClass="auto-style16">
                <table class="auto-style21">
                    <tr>
                        <td class="auto-style10">
                            <asp:Button ID="Button3" runat="server" Text="+" Height="25px" Width="25px" OnClick="Button3_Click" />
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="Button4" runat="server" Text="-" Height="25px" Width="25px" OnClick="Button4_Click"  />
                        </td>
                        <td class="auto-style15"><strong>Yemek Ekleme</strong></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style27" Height="301px">
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style29">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35"><span class="auto-style25"><strong>İsim</strong></span><span class="auto-style22"><strong> :</strong></span> </td>
                        <td class="auto-style32">
                            <asp:TextBox ID="yemekad" runat="server" Width="171px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36"><strong>Malzeme : </strong></td>
                        <td class="auto-style32">
                            <asp:TextBox ID="yemekmalzeme" runat="server" Width="171px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35"><strong><span class="auto-style25">Tarif :</span></strong> </td>
                        <td class="auto-style32">
                            <asp:TextBox ID="yemektarif" runat="server" Height="79px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36"><strong>Resim :</strong></td>
                        <td class="auto-style32">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36"><strong>Kategori : </strong></td>
                        <td class="auto-style32">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="126px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style28" colspan="2">
                            <asp:Button ID="Button5" runat="server" Height="21px" Text="Ekle" Width="96px" OnClick="Button5_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            </div>

        </div>
</asp:Content>
