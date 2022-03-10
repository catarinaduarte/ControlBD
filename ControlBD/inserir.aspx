<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="ExControloBD.inserir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Inserir dados na base de dados<br />
            <br />
            Preencha os dados e submeta<br />
            <br />
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="247px" Width="322px">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome_Curso:
                    <asp:TextBox ID="Nome_CursoTextBox" runat="server" Text='<%# Bind("Nome_Curso") %>' />
                    <br />
                    Duração:
                    <asp:TextBox ID="DuraçãoTextBox" runat="server" Text='<%# Bind("Duração") %>' />
                    <br />
                    Formador:
                    <asp:TextBox ID="FormadorTextBox" runat="server" Text='<%# Bind("Formador") %>' />
                    <br />
                    Local:
                    <asp:TextBox ID="LocalTextBox" runat="server" Text='<%# Bind("Local") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    Nome_Curso:
                    <asp:TextBox ID="Nome_CursoTextBox" runat="server" Text='<%# Bind("Nome_Curso") %>' />
                    <br />
                    Duração:
                    <asp:TextBox ID="DuraçãoTextBox" runat="server" Text='<%# Bind("Duração") %>' />
                    <br />
                    Formador:
                    <asp:TextBox ID="FormadorTextBox" runat="server" Text='<%# Bind("Formador") %>' />
                    <br />
                    Local:
                    <asp:TextBox ID="LocalTextBox" runat="server" Text='<%# Bind("Local") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome_Curso:
                    <asp:Label ID="Nome_CursoLabel" runat="server" Text='<%# Bind("Nome_Curso") %>' />
                    <br />
                    Duração:
                    <asp:Label ID="DuraçãoLabel" runat="server" Text='<%# Bind("Duração") %>' />
                    <br />
                    Formador:
                    <asp:Label ID="FormadorLabel" runat="server" Text='<%# Bind("Formador") %>' />
                    <br />
                    Local:
                    <asp:Label ID="LocalLabel" runat="server" Text='<%# Bind("Local") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CursosConnectionString %>" DeleteCommand="DELETE FROM [Lista2021] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Lista2021] ([Nome_Curso], [Duração], [Formador], [Local]) VALUES (@Nome_Curso, @Duração, @Formador, @Local)" SelectCommand="SELECT * FROM [Lista2021]" UpdateCommand="UPDATE [Lista2021] SET [Nome_Curso] = @Nome_Curso, [Duração] = @Duração, [Formador] = @Formador, [Local] = @Local WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome_Curso" Type="String" />
                    <asp:Parameter Name="Duração" Type="String" />
                    <asp:Parameter Name="Formador" Type="String" />
                    <asp:Parameter Name="Local" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome_Curso" Type="String" />
                    <asp:Parameter Name="Duração" Type="String" />
                    <asp:Parameter Name="Formador" Type="String" />
                    <asp:Parameter Name="Local" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Visualizar dados</asp:HyperLink>
        </div>
    </form>
</body>
</html>
