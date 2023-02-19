<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarif_Sitesi2.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Label ID="Label3" runat="server" style="font-size: xx-large" Text="Label"></asp:Label>
    <span style="font-size: xx-large">-Yorumlar</span><br />
    <br />

    <link href="StyleSheet2.css" rel="stylesheet" />

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6" style="height: 99px">
                <tr>
                    <td style="background-color: #9900CC">&nbsp;<asp:Label ID="Label4" runat="server" style="font-size: x-large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="White" Text='<%# Eval("YorumMail") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="height: 45px; background-color: #9900CC">-<asp:Label ID="Label6" runat="server" style="font-size: x-large" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="text-align: right; height: 22px; background-color: #9900CC">
                        <asp:Label ID="Label7" runat="server" ForeColor="White" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 19px; background-color: #430059"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <table class="auto-style6">
        <tr>
            <td style="text-align: center; background-color: #FFFFFF"><span style="background-color: #FEFFFF">A</span><span class="auto-style2" style="font-size: large; background-color: #FEFFFF">şağıdaki bölümden kendi yorumlarınızı ekleyebilirsiniz !</span></td>
        </tr>
        <tr>
            <td>
                        <table class="auto-style6" __designer:mapid="13">
                            <tr __designer:mapid="14">
                                <td style="width: 178px; text-align: right; height: 23px;" __designer:mapid="15">&nbsp;</td>
                                <td __designer:mapid="16" style="height: 23px">
                                    &nbsp;<tr __designer:mapid="14">
                                <td style="width: 178px; text-align: right; height: 23px;" __designer:mapid="15">Ad Soyad :&nbsp; </td>
                                <td __designer:mapid="16" style="height: 23px">
                                    <asp:TextBox ID="Yadsoyad" runat="server" Width="220px" CssClass="auto-style11"></asp:TextBox>
                            <tr __designer:mapid="14">
                                <td style="width: 178px; text-align: right" __designer:mapid="15">Mail : </td>
                                <td __designer:mapid="16">
                                    <asp:TextBox ID="Ymail" runat="server" TextMode="Email" Width="220px"></asp:TextBox>
                            <tr __designer:mapid="14">
                                <td style="width: 178px; text-align: right; height: 72px;" __designer:mapid="15">İçerik : </td>
                                <td __designer:mapid="16" style="height: 72px">
                                    <asp:TextBox ID="Yicerik" runat="server" Height="61px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                            <tr __designer:mapid="14">
                                <td style="width: 178px; text-align: right" __designer:mapid="15">&nbsp;</td>
                                <td __designer:mapid="16">
                                    <asp:Button ID="YorumGönder" runat="server" CssClass="auto-style7" OnClick="YorumGönder_Click" Text="Yorumu Gönder " />
                            <tr __designer:mapid="14">
                                <td style="width: 178px; text-align: right" __designer:mapid="15">&nbsp;</td>
                                <td __designer:mapid="16">
                                    &nbsp;
</asp:Content>
