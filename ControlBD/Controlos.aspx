<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Controlos.aspx.cs" Inherits="ExControloBD.Controlos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            color: #800000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Outros controlos de bases de dados:</span><br class="auto-style1" />
            <br />
            DataList:<br class="auto-style1" />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" Height="373px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" Width="712px">
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome_Curso:
                    <asp:Label ID="Nome_CursoLabel" runat="server" Text='<%# Eval("Nome_Curso") %>' />
                    <br />
                    Duração:
                    <asp:Label ID="DuraçãoLabel" runat="server" Text='<%# Eval("Duração") %>' />
                    <br />
                    Formador:
                    <asp:Label ID="FormadorLabel" runat="server" Text='<%# Eval("Formador") %>' />
                    <br />
                    Local:
                    <asp:Label ID="LocalLabel" runat="server" Text='<%# Eval("Local") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CursosConnectionString %>" SelectCommand="SELECT * FROM [Lista2021]"></asp:SqlDataSource>
            <br />
            DetailsView:<br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="537px">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Nome_Curso" HeaderText="Nome_Curso" SortExpression="Nome_Curso" />
                    <asp:BoundField DataField="Duração" HeaderText="Duração" SortExpression="Duração" />
                    <asp:BoundField DataField="Formador" HeaderText="Formador" SortExpression="Formador" />
                    <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
