<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="결제완료.aspx.cs" Inherits="스토어_결제완료" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            z-index: 1;
            left: 10px;
            top: 347px;
            position: absolute;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 222px; top: 291px; position: absolute; font-weight: 700; font-style: italic; font-size: 40pt; " Text="Payment Details"></asp:Label>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p style="text-decoration: underline">
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<div style="z-index: 1; left: 218px; top: 388px; position: absolute; height: 379px; width: 785px; background-color: #FFFFFF">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/결제.xml"></asp:XmlDataSource>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="Black" GridLines="Vertical" style="z-index: 1; left: 204px; top: 46px; position: absolute; height: 102px; width: 421px; text-align: center; right: 160px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F7DE" />
        <ItemTemplate>
            주문자 명 :
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            (<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            )
            <br />
            가격 :
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            배송지 :
            <asp:Label ID="adressLabel" runat="server" Text='<%# Eval("adress") %>' />
            <br />
            <br />
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/Store/스토어.aspx" style="color: #FF66FF" CssClass="auto-style5">&lt; 더 둘러보기</asp:LinkButton>
</div>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

