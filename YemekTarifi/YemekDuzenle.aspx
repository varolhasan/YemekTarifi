<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            margin-left: 40px;
        }
        .auto-style9 {
            height: 30px;
            text-align: right;
        }
        .auto-style10 {
            height: 30px;
            margin-left: 40px;
        }
        .auto-style11 {
            text-align: right;
        }
    .auto-style12 {
        margin-left: 80px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>YEMEK ADI:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;MALZEMELERİ:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="tb5" Height="75px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>&nbsp;TARİFİ:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTarif" runat="server" CssClass="tb5" Height="125px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KATEGORİ:</strong></td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownListKategori" runat="server" CssClass="tb5" Width="140px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>YEMEK RESİM:</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="btnGuncelle" runat="server" CssClass="fb8" Height="35px" OnClick="btnGuncelle_Click" Text="Güncelle" Width="236px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnGununYemegiSec" runat="server" CssClass="fb8" Height="35px" OnClick="btnGununYemegiSec_Click" Text="Günün Yemeği Olarak Seç" Width="236px" />
            </td>
        </tr>
    </table>
</asp:Content>
