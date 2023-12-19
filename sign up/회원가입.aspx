<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="회원가입.aspx.cs" Inherits="회원가입" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;<br />
    </p>
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<div style="z-index: 1; left: 291px; top: 338px; position: absolute; height: 840px; width: 693px; background-color: #D9D9FF; right: 333px;">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 48px; top: 37px; position: absolute" Text="이름 : "></asp:Label>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 48px; top: 96px; position: absolute; height: 5px" Text="아이디 : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 205px; top: 30px; position: absolute; height: 20px; width: 185px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 205px; top: 87px; position: absolute; height: 20px; width: 185px">8~15자, 영문, 숫자</asp:TextBox>
    <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 544px; top: 779px; position: absolute" Text="회원가입" OnClick="Button1_Click" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ForeColor="#FF3300" style="z-index: 1; left: 409px; top: 90px; position: absolute; width: 11px; font-weight: 700;">*</asp:RequiredFieldValidator>
    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 50px; top: 183px; position: absolute; right: 527px">비밀번호 : </asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 205px; top: 176px; position: absolute; height: 20px; width: 185px;">8~15자, 영문, 숫자</asp:TextBox>
    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 50px; top: 267px; position: absolute" Text="비밀번호 확인 : "></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 205px; top: 261px; position: absolute; height: 20px; width: 185px;">8~15자, 영문, 숫자</asp:TextBox>
    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 51px; top: 449px; position: absolute" Text="주소 : "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 205px; top: 445px; position: absolute; height: 20px; width: 185px;"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 46px; top: 514px; position: absolute" Text="이메일 : "></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 205px; top: 511px; position: absolute; height: 20px; width: 185px;"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 421px; top: 516px; position: absolute; height: 13px;" Text="@"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 461px; top: 512px; position: absolute; height: 20px; width: 185px;">
        <asp:ListItem>    직접입력</asp:ListItem>
        <asp:ListItem>naver.com</asp:ListItem>
        <asp:ListItem>gmail.com</asp:ListItem>
        <asp:ListItem>icloud.com</asp:ListItem>
        <asp:ListItem>kakao.com</asp:ListItem>
        <asp:ListItem Value="han.net">hanmail.net</asp:ListItem>
<asp:ListItem>nate.com</asp:ListItem>
    </asp:DropDownList>
    <asp:CheckBox ID="CheckBox1" runat="server" style="z-index: 1; left: 48px; top: 620px; position: absolute" Text="[필수] 개인 정보 수집/이용 동의" />
    <asp:CheckBox ID="CheckBox2" runat="server" style="z-index: 1; left: 48px; top: 668px; position: absolute" Text="[필수] 휴대폰 인증/ 서비스 이용 약관 동의" />
    <asp:CheckBox ID="CheckBox3" runat="server" style="z-index: 1; left: 48px; top: 722px; position: absolute" Text="[선택] 홍보성 광고 수신 동의" />
    <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 48px; top: 355px; position: absolute" Text="전화번호 : "></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 205px; top: 352px; position: absolute; height: 20px; width: 185px">010 0000 0000</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="#FF3300" style="z-index: 1; left: 410px; top: 33px; position: absolute; width: 11px; font-weight: 700;" ErrorMessage="*">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ForeColor="#FF3300" style="z-index: 1; left: 410px; top: 173px; position: absolute; font-weight: 700;">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#FF3300" style="z-index: 1; left: 410px; top: 267px; position: absolute; font-weight: 700;">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="#FF3300" style="z-index: 1; left: 410px; top: 355px; position: absolute; height: 19px; width: 11px; font-weight: 700;">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="#FF3300" style="z-index: 1; left: 410px; top: 446px; position: absolute; font-weight: 700;">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="#FF3300" style="z-index: 1; left: 665px; top: 512px; position: absolute; font-weight: 700;"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="8~15자, 영문, 숫자 포함하여 입력해주세요." style="z-index: 1; left: 206px; top: 135px; position: absolute; color: #FF0000;" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,15}$"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="8~15자, 영문, 숫자를 포함하여 입력해주세요." style="z-index: 1; left: 205px; top: 226px; position: absolute; color: #FF0000;" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,15}$"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="다시 입력해주세요." style="z-index: 1; left: 205px; top: 400px; position: absolute; color: #FF0000;" ValidationExpression="\d{3}-\d{3,4}-\d{4}"></asp:RegularExpressionValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="비밀번호를 다시 입력해주세요" style="z-index: 1; left: 205px; top: 309px; position: absolute; color: #FF0000;"></asp:CompareValidator>
    <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 451px; top: 89px; position: absolute; color: #FF0000;"></asp:Label>
    <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 211px; top: 556px; position: absolute; color: #FF0000;"></asp:Label>
    <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 58px; top: 780px; position: absolute; color: #FF0000;"></asp:Label>
</div>
    <p>
        &nbsp;&nbsp;</p>
    <p>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 292px; top: 262px; position: absolute; font-weight: 700; font-style: italic; font-size: 30pt" Text="Sign up"></asp:Label>
    </p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

