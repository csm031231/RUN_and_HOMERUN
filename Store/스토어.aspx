<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="스토어.aspx.cs" Inherits="스토어" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 1122px;
            height: 997px;
            z-index: 1;
            left: 43px;
            top: 127px;
            position: absolute;
            background-color: #999999;
        }
        .auto-style8 {
            background-color: #E9F2FC;
            width: 220px;
            height: 300px;
            text-align: center;
        }
        .auto-style9 {
            height: 35px;
            background-color: #FFFFFF;
            text-align: center;
        }
     
        
        
     
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <div style="z-index: 1; left: 32px; top: 206px; position: absolute; height: 1371px; width: 1214px; background-color: #F7FABF">
        <table class="auto-style7" align="center">
            <tr>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem Value="59000"> LG 홈 유니폼</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="236px" ImageUrl="~/이미지/LG유니폼.png" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        <asp:ListItem Value="119000"> KT 어센틱 홈 유니폼</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="236px" ImageUrl="~/이미지/KT유니폼.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                        <asp:ListItem Value="140000"> SSG 어센틱 유니폼</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="236px" ImageUrl="~/이미지/SSG유니폼.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList4" runat="server">
                        <asp:ListItem Value="144000"> NC 어센틱 홈 유니폼</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="236px" ImageUrl="~/이미지/NC유니폼.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList5" runat="server">
                        <asp:ListItem Value="95000"> 롯데 챔피언 유니폼</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image5" runat="server" Height="236px" ImageUrl="~/이미지/롯데유니폼.jpg" Width="174px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">59000원</td>
                <td class="auto-style9">119000원</td>
                <td class="auto-style9">140000원</td>
                <td class="auto-style9">144000원</td>
                <td class="auto-style9">95000원</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList6" runat="server">
                        <asp:ListItem Value="115000"> LG 유광 점퍼 </asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image6" runat="server" Height="236px" ImageUrl="~/이미지/LG유광점퍼.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList7" runat="server">
                        <asp:ListItem Value="32000"> KT 모자</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="236px" ImageUrl="~/이미지/KT모자.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList8" runat="server">
                        <asp:ListItem Value="42000"> 리버시블 버킷햇</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image8" runat="server" Height="236px" ImageUrl="~/이미지/SSG모자.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList9" runat="server">
                        <asp:ListItem Value="42000"> NC 모자</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image9" runat="server" Height="236px" ImageUrl="~/이미지/NC모자.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList10" runat="server">
                        <asp:ListItem Value="42000"> 롯데 모자</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image10" runat="server" Height="236px" ImageUrl="~/이미지/롯데모자.jpg" Width="174px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">115000원</td>
                <td class="auto-style9">32000원</td>
                <td class="auto-style9">42000원</td>
                <td class="auto-style9">42000원</td>
                <td class="auto-style9">42000원</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList11" runat="server">
                        <asp:ListItem Value="8000"> LG 옐로우 무적타월</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image11" runat="server" Height="236px" ImageUrl="~/이미지/LG슬로건.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList12" runat="server">
                        <asp:ListItem Value="32000"> KT 비트배트</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image12" runat="server" Height="236px" ImageUrl="~/이미지/KT응원봉.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList13" runat="server">
                        <asp:ListItem Value="9000"> 랜더스 응원 배트 </asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image13" runat="server" Height="236px" ImageUrl="~/이미지/SSG응원봉.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList14" runat="server">
                        <asp:ListItem Value="6000"> NC 민트 응원배트</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image14" runat="server" Height="236px" ImageUrl="~/이미지/NC응원봉.jpg" Width="174px" />
                </td>
                <td class="auto-style8">
                    <asp:CheckBoxList ID="CheckBoxList15" runat="server">
                        <asp:ListItem Value="3000"> 롯데 짝짝이</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Image ID="Image15" runat="server" Height="236px" ImageUrl="~/이미지/롯데짝짝이.jpg" Width="174px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">8000원</td>
                <td class="auto-style9">32000원</td>
                <td class="auto-style9">9000원</td>
                <td class="auto-style9">6000원</td>
                <td class="auto-style9">3000원</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 51px; top: 1237px; position: absolute; height: 33px; width: 115px" Text="가격 계산" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 1040px; top: 1236px; position: absolute; height: 33px; width: 115px" Text="결제하기" OnClick="Button2_Click" />
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 50px; top: 1190px; position: absolute; height: 22px; width: 206px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 44px; top: 48px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 52px; top: 1298px; position: absolute; color: #FF0000"></asp:Label>
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 244px; top: 46px; position: absolute" Text="아이디 검색" OnClick="Button3_Click" />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 431px; top: 49px; position: absolute; width: 403px"></asp:Label>
    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 989px; top: 22px; position: absolute; font-weight: 700; font-style: italic; font-size: 40pt; " Text="Store"></asp:Label>
    </div>
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
</asp:Content>

