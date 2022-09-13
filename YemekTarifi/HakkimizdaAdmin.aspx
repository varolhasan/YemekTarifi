<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifi.HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            background-color: #999999;
        }

        .auto-style14 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style15 {
            width: 696px;
        }

        .auto-style16 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style18 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style15">&nbsp;HAKKIMIZDA&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div></div>
        <asp:TextBox runat="server" CssClass="auto-style16" Height="250px" TextMode="MultiLine" Width="442px" ID="txtHakkimizda"></asp:TextBox>
        <asp:Button style="margin-top:20px; margin-left:125px; margin-bottom:20px;" runat="server" Text="Güncelle" Height="35px" Width="200px" ID="btnGuncelle" OnClick="btnGuncelle_Click" />
    </asp:Panel>
</asp:Content>
