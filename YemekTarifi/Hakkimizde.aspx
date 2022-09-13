<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hakkimizde.aspx.cs" Inherits="YemekTarifi.Hakkimizde" %>
<%@ Register assembly="DevExpress.Web.v22.1, Version=22.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            height: 51px;
        }
        .auto-style12 {
            text-align: justify;
        }
        .auto-style13 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style14 {
            height: 19px;
        }
        .bir{
            padding:2px;
        }
    </style>
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <div class="auto-style12">
                    <div class="auto-style13">
                        <strong>HAKKIMIZDA</strong></div>
                    <div>
                    </div>
                    <div>
                        <asp:Label CssClass="bir" ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </div>
                    <div class="auto-style14">
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:Image ID="Image1" runat="server" Height="193px" Width="448px" ImageUrl="~/Pictures/indir (1).jpg" />
    </p>
    <div class="auto-style10"></div>
</asp:Content>
