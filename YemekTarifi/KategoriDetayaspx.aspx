<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KategoriDetayaspx.aspx.cs" Inherits="YemekTarifi.KategoriDetayaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            font-size: x-large;
            text-decoration: none;
            color: #CC0000;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        .auto-style14 {
        background-color: #FFFF66;
            width: 561px;
        }
        .auto-style16 {
            width: 343px;
        }
        .auto-style17 {
            height: 21px;
            width: 561px;
        }
        .auto-style18 {
            width: 427px;
        }
        .auto-style19 {
            width: 561px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style9" style:"width:">
            <tr>
                <td class="auto-style14"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">Malzemeler:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Tarif:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><em>Puan: </em></strong><em><strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style13"></asp:Label>
                    </strong></em></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #333333" class="auto-style19">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
