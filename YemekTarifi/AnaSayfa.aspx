<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifi.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            font-size: x-large;
            text-decoration: none;
            color: #CC0000;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            background-color: #FFFF66;
            color: #CC0000;
            height: 30px;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        a.auto-style10{
            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style12"><strong>


                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekAd") %>'></asp:Label></a>
                        </strong></td>


                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Malzemeler:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">Tarif:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><em>Puan: </em></strong><em><strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style13"></asp:Label>
                        </strong></em></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #333333">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
