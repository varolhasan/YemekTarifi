<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifi.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            background-color: #999999;
        }
        .auto-style8 {
            background-color: #006699;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 153px;
        }
        .auto-style11 {
            width: 170px;
            text-align: right;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            width: 33px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style15 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            line-height: 30px;
            position: relative;
            left: 3px;
            top: 0px;
            width: 241px;
        }
        .auto-style15:hover{
            background-color:#8dc0f7;
        }
        .auto-style16 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                           <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/del.png" /></a> 
                        </td>
                        <td class="auto-style12">
                            <a href="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/upd.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style13">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </td>
                    <td><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>KATEGORİ EKLEME</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" CssClass="auto-style8">
        <table class="auto-style9">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style16">
                    <asp:Button style="line-height:30px; position:relative; left:-2px;" ID="btnEkle" runat="server" CssClass="auto-style15 fb8" Height="30px" Text="Ekle" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>  

    </asp:Panel>
</asp:Content>
