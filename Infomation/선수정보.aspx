<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="선수정보.aspx.cs" Inherits="정보_선수정보" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
    <div style="z-index: 1; left: 39px; top: 218px; position: absolute; height: 1352px; width: 1194px; background-color: #FFD5E1">
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 879px; top: 92px; position: absolute; width: 172px; height: 30px; font-weight: 700; font-size: large;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="소속" DataValueField="소속">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KBOConnectionString %>" SelectCommand="SELECT DISTINCT [소속] FROM [userdb2]"></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 99px; top: 34px; position: absolute; font-size: 40pt; font-weight: 700; font-style: italic; width: 213px;" Text="Player"></asp:Label>
        <div style="z-index: 1; left: 93px; top: 146px; position: absolute; height: 563px; width: 1012px; background-color: #EEFFFF">
            <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 43px; top: 42px; position: absolute; height: 461px; width: 926px; text-align: center;" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="선수명" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="소속" HeaderText="소속" SortExpression="소속" />
                    <asp:BoundField DataField="선수명" HeaderText="선수명" ReadOnly="True" SortExpression="선수명" />
                    <asp:BoundField DataField="등번호" HeaderText="등번호" SortExpression="등번호" />
                    <asp:BoundField DataField="생년월일" HeaderText="생년월일" SortExpression="생년월일" />
                    <asp:BoundField DataField="피지컬" HeaderText="피지컬" SortExpression="피지컬" />
                    <asp:BoundField DataField="포지션" HeaderText="포지션" SortExpression="포지션" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KBOConnectionString %>" SelectCommand="SELECT * FROM [userdb2] WHERE ([소속] = @소속)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="소속" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 826px; top: 94px; position: absolute; font-weight: 700" Text="구단 :"></asp:Label>
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

