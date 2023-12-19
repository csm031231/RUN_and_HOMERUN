<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="결제창.aspx.cs" Inherits="스토어_결제창" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<p>
    <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 340px; top: 195px; position: absolute; font-weight: 700; font-style: italic; font-size: 40pt; " Text="Payment"></asp:Label>
</p>
<div style="z-index: 1; left: 336px; top: 299px; position: absolute; height: 730px; width: 513px; background-color: #FFFFFF">
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 46px; top: 56px; position: absolute" Text="주문자  명을 입력하세요 : "></asp:Label>
    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 116px; top: 102px; position: absolute" Text="ID를 입력하세요 :"></asp:Label>
    <asp:Label ID="Label4" runat="server" Text="주소 : " style="z-index: 1; left: 57px; top: 401px; position: absolute"></asp:Label>
    <asp:Label ID="Label5" runat="server" Text="가격을 입력하세요 : " style="z-index: 1; left: 71px; top: 502px; position: absolute"></asp:Label>
    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 220px; top: 145px; position: absolute; color: #FF0000"></asp:Label>
    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 237px; top: 608px; position: absolute; color: #FF0000"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 281px; top: 55px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 280px; top: 99px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 129px; top: 399px; position: absolute; width: 315px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" style="z-index: 1; left: 262px; top: 500px; position: absolute"></asp:TextBox>
    <asp:Table ID="Table1" runat="server" style="position: relative; top: 251px; left: 217px; width: 74px; text-align: center" GridLines="Both">
    </asp:Table>
    <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 206px; top: 194px; position: absolute" Text="정보보기" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 377px; top: 657px; position: absolute; height: 31px; width: 105px" Text="결제하기" />
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="가격을 입력하세요" MaximumValue="1000000000" MinimumValue="0" style="z-index: 1; left: 266px; top: 539px; position: absolute; color: #FF0000" Type="Integer" ControlToValidate="TextBox4"></asp:RangeValidator>
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
    &nbsp;</p>
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

