<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifi.Tarifler" %>

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
            width: 561px;
        }
        .auto-style16 {
            width: 446px;
        }
        .auto-style17 {
            width: 382px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7" Width="449px">
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                </td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                </strong></td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp; ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <a href="TariflerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/proposal.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7" Width="449px">
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                </td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                </strong></td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp; ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <a href="TariflerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/proposal.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
