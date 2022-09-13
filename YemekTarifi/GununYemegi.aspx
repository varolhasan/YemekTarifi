<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" style="font-size: larger; font-weight: 700" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="margin-left: 40px; text-align: justify;"><strong>Malzemeler:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="margin-left: 40px; text-align: justify;"><strong>Tarif:</strong><asp:Label ID="Label6" runat="server" style="text-align: justify" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px; text-align: justify;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; margin-left: 40px">
                        <asp:Image ID="Image1" runat="server" Height="193px" style="text-align: center" Width="397px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; margin-left: 40px" class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px" class="auto-style3">
                        <table class="auto-style1">
                            <tr>
                                <td><strong>Puan:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td style="text-align: right"><strong>Eklenme - Tarihi:</strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="margin-left: 40px">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
