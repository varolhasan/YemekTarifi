<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifi.TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
            font-weight: bold;
        }

        .auto-style4 {
            text-align: center;
            font-weight: bold;
            height: 26px;
        }

        .auto-style5 {
            height: 26px;
        }
        .auto-style10 {
            height: 27px;
        }
        .auto-style11 {
            width: 119px;
            font-weight: bold;
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
            font-weight: bold;
            height: 112px;
            width: 119px;
        }
        .auto-style14 {
            text-align: right;
            font-weight: bold;
            height: 27px;
            width: 119px;
        }
        .auto-style15 {
            height: 112px;
        }
        .auto-style16 {
            width: 119px;
            text-align: right;
        }
        .auto-style17 {
            text-align: right;
            font-weight: bold;
            height: 26px;
            width: 119px;
        }
        .auto-style18 {
            height: 26px;
            width: 348px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarih Ad:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Malzemeler:</td>
            <td class="auto-style18">
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Yapılışı:</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Resim:</td>
            <td class="auto-style18" style="margin-left: 40px">
                <asp:FileUpload ID="FileUploadResim" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Tarif Öneren:</td>
            <td class="auto-style18" style="margin-left: 40px">
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Mail Adresi:</td>
            <td class="auto-style18" style="margin-left: 40px">
                <asp:TextBox ID="txtMailAdresi" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700" class="auto-style16">&nbsp;</td>
            <td style="margin-left: 40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button style="cursor:grab;" ID="btnTarifOner" runat="server" BackColor="#00CCFF" Height="40px" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" CssClass="fb8" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
