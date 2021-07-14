<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebPruebaAcceso.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="js/codigo.js"></script>
    <script src="js/sweetalert2.all.min.js"></script>
    <script src="js/sweetalert2.min.js"></script>
    <link href="css/sweetalert2.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Probar Contexion" OnClick="Button1_Click" />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="428px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnConsultaDataReader" runat="server" OnClick="btnConsultaDataReader_Click" Text="Consulta DATA READER" />
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            <br />
            <br />
            <asp:Button ID="btnConsultaDataSet" runat="server" OnClick="btnConsultaDataSet_Click" Text="Consulta DATA SET" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDatosDataSet" runat="server" OnClick="btnDatosDataSet_Click" Text="Obtener datos del DataSet" />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="ID a buscar:"></asp:Label>
            <asp:TextBox ID="txbIdBus" runat="server" CssClass="auto-style1"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Nombre a modificar:"></asp:Label>
            <asp:TextBox ID="txbNomM" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnMdDS" runat="server" OnClick="btnMdDS_Click" Text="Modificar datos del DataSet" />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
        </div>
        <div>
            INSERTAR EMPLEADO
            <br />
            <asp:Label ID="Label7" runat="server" Text="ID Empleado:"></asp:Label>
&nbsp;<asp:TextBox ID="txbID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Nombre:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insertr empleado (2 parametros fijos)" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Insertar empleado sin seguridad" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Id Producto: "></asp:Label>
            <asp:TextBox ID="txbIdprod" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descripcion: "></asp:Label>
            <asp:TextBox ID="txbDescProd" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Categoria: "></asp:Label>
            <asp:TextBox ID="txbCategoProd" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Precio: "></asp:Label>
            <asp:TextBox ID="txbPrecProd" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnProd" runat="server" OnClick="btnProd_Click" Text="Insertar Producto (MAS SEGURO)" />
            <br />
            <br />
            <asp:Button ID="btnConsultaProd" runat="server" OnClick="btnConsultaProd_Click" Text="Consulta de Productos" />
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Pasar a los Tickets" />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
