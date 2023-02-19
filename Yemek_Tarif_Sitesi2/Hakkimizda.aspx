<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style6">
        <tr>
            <td colspan="2" style="text-align: center; font-size: xx-large; background-color: #4F004F; color: #FFFFFF;">Hakkımızda</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: x-large">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-size: x-large">Site Sahibi Hakkında</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2"><span class="auto-style8">
                <br style="font-size: large" />
                <br /></span>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <table class="auto-style6">
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Hakkımızdaicerik") %>' style="font-size: large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Image ID="Image1" runat="server" Height="337px" ImageUrl='<%# Eval("HakkımızdaResimler") %>' Width="274px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; font-size: x-large"><a href="https://www.linkedin.com/in/emre-can-mece-462842229"><strong>Linkedin</strong></a></td>
            <td style="text-align: center; font-size: x-large"><strong><a href="https://instagram.com/_frowi_?igshid=YmMyMTA2M2Y=">İnstagram</a></strong></td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align: center"><span style="font-size: large">froward37@gmail.com</span></td>
            <td style="text-align: center; font-size: x-large"><strong><a href="https://youtube.com/@froward7053">Youtube</a></strong></td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2" style="text-align: center; height: 12px; background-color: #4F004F"></td>
        </tr>
    </table>
</asp:Content>
