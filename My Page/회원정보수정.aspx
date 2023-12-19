<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="회원정보수정.aspx.cs" Inherits="마이페이지_회원정보수정" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <div style="z-index: 1; left: 188px; top: 349px; position: absolute; height: 886px; width: 892px; background-color: #CCDFFD">
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 159px; top: 84px; position: absolute; width: 141px; text-align: right;" Text="이름 :"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 159px; top: 165px; position: absolute; width: 141px; text-align: right;" Text="아이디 : "></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 159px; top: 237px; position: absolute; width: 141px; text-align: right;" Text="비밀번호 :"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 159px; top: 323px; position: absolute; height: 20px; width: 141px; text-align: right;" Text="비밀번호 확인 :"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 159px; top: 399px; position: absolute; width: 141px; text-align: right;" Text="전화번호 : "></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 159px; top: 474px; position: absolute; width: 141px; text-align: right;" Text="주소 :"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 159px; top: 553px; position: absolute; width: 141px; text-align: right;" Text="이메일 : "></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 323px; top: 84px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 323px; top: 165px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 323px; top: 399px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 326px; top: 581px; position: absolute; height: 20px; color: #FF0000;"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 323px; top: 237px; position: absolute">8~15자, 영문, 숫자</asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 323px; top: 323px; position: absolute">8~15자, 영문, 숫자</asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 323px; top: 471px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 323px; top: 550px; position: absolute"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" style="z-index: 1; left: 522px; top: 238px; position: absolute; color: #FF0000;" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" style="z-index: 1; left: 522px; top: 326px; position: absolute; color: #FF0000;" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" style="z-index: 1; left: 723px; top: 548px; position: absolute; color: #FF0000; width: 12px;" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" style="z-index: 1; left: 524px; top: 473px; position: absolute; color: #FF0000;" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="8~15자, 영문, 숫자를 포함하여 입력해주세요." style="z-index: 1; left: 327px; top: 273px; position: absolute; color: #FF0000;" ControlToValidate="TextBox1" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,15}$"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호를 다시 입력해주세요" style="z-index: 1; left: 327px; top: 357px; position: absolute; color: #FF0000;" ControlToCompare="TextBox1" ControlToValidate="TextBox2"></asp:CompareValidator>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 518px; top: 549px; position: absolute; height: 19px; width: 184px" AutoPostBack="True">
            <asp:ListItem>직접 입력</asp:ListItem>
            <asp:ListItem>@ naver.com</asp:ListItem>
            <asp:ListItem>@ gmail.com</asp:ListItem>
            <asp:ListItem>@ icloud.com</asp:ListItem>
            <asp:ListItem>@ kakao.com</asp:ListItem>
            <asp:ListItem>@ hanmail.net</asp:ListItem>
            <asp:ListItem>@ nate.com</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 390px; top: 692px; position: absolute; height: 27px;" Text="수정 완료" />
    </div>
    <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 196px; top: 255px; position: absolute; font-weight: 700; font-style: italic; font-size: 40pt; " Text="Modify"></asp:Label>
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
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

