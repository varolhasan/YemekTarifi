<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifi.GununYemegiAdmin" %>
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
            width: 445px;
        }
        .auto-style16 {
            width: 400px;
            height: 36px;
        }
        .auto-style17 {
            height: 36px;
        width: 84px;
    }
    .auto-style18 {
        width: 383px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                </td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td class="auto-style18">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style17"><a href='YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/choose.png" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
