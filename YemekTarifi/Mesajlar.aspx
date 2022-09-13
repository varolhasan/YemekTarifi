<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifi.Mesajlar" %>
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
            width: 392px;
        }
        .auto-style16 {
            width: 437px;
        }
        .auto-style18 {
            width: 343px;
        }
        .auto-style19 {
            text-align: left;
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
                <td class="auto-style15">&nbsp;&nbsp;&nbsp; MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                                <a href="MesajDetay.aspx?MesajId=<%#Eval("MesajId")%>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/read.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
