<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifi.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            background-color: #999999;
        }

        .auto-style14 {
            font-weight: bold;
            font-size: x-large;
        }
    .auto-style18 {
        width: 447px;
    }
    .auto-style19 {
        width: 215px;
    }
    .auto-style20 {
        width: 108px;
    }
    .auto-style21 {
        width: 381px;
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
                <td class="auto-style21">&nbsp; ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <a href="Yorumlar.aspx?YorumId=<%#Eval("YorumId")%>&durum=sil">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/del.png" /></a>
                        </td>
                        <td class="auto-style12">
                                <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/upd.png" />
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click1"/>
                </td>
                <td><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                </strong></td>
                <td class="auto-style21">&nbsp; ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <a href="Yorumlar.aspx?YorumId=<%#Eval("YorumId")%>&durum=sil">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/del.png" /></a>
                        </td>
                        <td class="auto-style12">
                            <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId")%>">
                                <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/upd.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
