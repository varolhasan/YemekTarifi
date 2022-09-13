<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            margin-left: 40px;
        }
        .auto-style9 {
            width: 163px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Ad Soyad:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail Adresi:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMailAdresi" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>İçerik:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yemek:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtYemek" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnOnayla" runat="server" CssClass="fb8" Height="35px" OnClick="btnOnayla_Click" Text="Onayla" Width="236px" />
            </td>
        </tr>
    </table>
</asp:Content>
