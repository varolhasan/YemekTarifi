<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-size: 30pt;
            color: #CCCCCC;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style12 {
            font-size: xx-small;
        }
        .auto-style2{
            font-size:20pt;
        }
        .auto-style13 {
            font-size: medium;
        }
    .auto-style14 {
        margin-left: 40px;
    }
    .auto-style15 {
        text-align: right;
    }
    .auto-style16 {
        font-size: large;
        background-color: #FFFF99;
    }
        .auto-style17 {
            height: 24px;
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style19 {
            text-align: right;
            height: 23px;
        }
        .auto-style20 {
            margin-left: 40px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
<asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
&nbsp;<br />
</strong>
    <asp:DataList style=background-color:#ce7171; ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table style="background-color:#ce7171"; class="auto-style10">
                <tr>
                    <td style=background-color:#ce7171; class="auto-style17">
                        <strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; background-color:#ce7171; border-bottom-width: thin; border-bottom-color: #999999">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumIcerik") %>' CssClass="auto-style13"></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumTarih") %>' CssClass="auto-style12"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style16"><strong>Yorum Yapma Paneli</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table style="background-color:#ce7171;" class="auto-style10">
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Ad Soyad:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtAdSoyad" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Mail:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Yorumunuz:</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtYorum" runat="server" EnableTheming="True" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnYorumYap" runat="server" CssClass="auto-style13" Height="40px" OnClick="btnYorumYap_Click" Text="Yorum Yap" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
