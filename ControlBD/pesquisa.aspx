<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisa.aspx.cs" Inherits="ExControloBD.pesquisa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Pesquisar com TextBox</span><br />
            <br />
            Digite o nome do curso:
            <asp:TextBox ID="TextBox1" runat="server" Width="395px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="218px" Width="513px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Nome_Curso" HeaderText="Nome Curso" SortExpression="Nome_Curso" />
                    <asp:BoundField DataField="Duração" HeaderText="Duração" SortExpression="Duração" />
                    <asp:BoundField DataField="Formador" HeaderText="Formador" SortExpression="Formador" />
                    <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CursosConnectionString %>" SelectCommand="SELECT * FROM [Lista2021] WHERE ([Nome_Curso] LIKE '%' + @Nome_Curso + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Nome_Curso" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
