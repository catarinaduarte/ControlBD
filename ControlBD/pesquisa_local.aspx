<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisa_local.aspx.cs" Inherits="ExControloBD.pesquisa_local" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Pesquisa por local</span><br />
            <br />
            Indique o local do curso:
            <asp:TextBox ID="TextBox1" runat="server" Width="346px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="265px" Width="526px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Nome_Curso" HeaderText="Nome_Curso" SortExpression="Nome_Curso" />
                    <asp:BoundField DataField="Duração" HeaderText="Duração" SortExpression="Duração" />
                    <asp:BoundField DataField="Formador" HeaderText="Formador" SortExpression="Formador" />
                    <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CursosConnectionString %>" SelectCommand="SELECT * FROM [Lista2021] WHERE ([Local] LIKE '%' + @Local + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Local" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
