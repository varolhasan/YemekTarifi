<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style13 {
            width: 149px;
        }
        .auto-style14 {
            width: 117px;
        }
        .auto-style16 {
            width: 131px;
            text-align: right;
            height: 159px;
        }
        .auto-style17 {
            width: 117px;
            font-size: medium;
        }
        .auto-style21 {
            width: 117px;
            text-align: right;
        }
        .auto-style22 {
            width: 117px;
            text-align: right;
            height: 159px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-color#ce7171;" class="auto-style9" border="0">
        <tr>
            <td class="auto-style17"><strong>MESAJ PANELİ</strong></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Ad Soyad:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Mail Adresiniz:</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Konu:</strong></td>
            <td>
                <asp:TextBox ID="txtKonu" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong dir="ltr">Mesaj:</strong></td>
            <td class="auto-style16">
                <asp:TextBox style="position:relative; left:-59px" ID="txtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="btnGonder" runat="server" CssClass="auto-style10" Height="32px" Text="Gönder" Width="230px" OnClick="Button1_Click" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
