<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaMysql.aspx.cs" Inherits="WebPruebaAcceso.PruebaMysql" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Prueba MySql</h3>
            <br />
            <asp:Button ID="btnPruebaAcceso" runat="server" Text="Prueba Acceso" OnClick="btnPruebaAcceso_Click" />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnConsultaMaterias" runat="server" Text="Consulta de materias" OnClick="btnConsultaMaterias_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
