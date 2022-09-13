<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="TariflerDetay.aspx.cs" Inherits="YemekTarifi.TariflerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        height: 21px;
    }
    .auto-style9 {
        height: 21px;
        text-align: right;
    }
    .auto-style10 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtTarifMalzemeler" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yapılışı:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTarifYapilis" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Resim:</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUploadTarifResim" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTarifOneren" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Öneren Mail:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTarifOnerenMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Kategori:</strong></td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownListKategori" runat="server" CssClass="tb5" Width="170px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnTarifOnayla0" runat="server" CssClass="fb8" Height="35px" OnClick="btnTarifOnayla_Click" Text="Onayla" Width="236px" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
