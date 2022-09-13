<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifi.MesajDetayaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 24px;
        }
        .auto-style9 {
            height: 24px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mesaj Göndeeren:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Başlık:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail Adresi:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtMailAdresi" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mesaj İçerik:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtMesajIcerik" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
