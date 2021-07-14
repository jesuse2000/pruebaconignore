<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebPruebaAcceso.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h2>Operaciones con la tabla TICKET</h2>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <h3>Insertar</h3>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Empleado: "></asp:Label> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="ID: "></asp:Label> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Fecha/Hora: "></asp:Label> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Insertar" OnClick="Button1_Click" style="height: 26px" />
            <br />

            <h4>Consultas</h4>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Mostrar Consultas de los Tickets" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
