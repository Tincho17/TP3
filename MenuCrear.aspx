<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuCrear.aspx.cs" Inherits="TP3.MenuCrear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menú Crear</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Menú Crear</h3>
            <asp:HyperLink ID="lnkCrearCuenta" runat="server" Text="Crear Cuenta" NavigateUrl="~/CrearCuenta.aspx" />
            <br /><br />
            <asp:HyperLink ID="lnkCrearRegistroContable" runat="server" Text="Crear Registro Contable" NavigateUrl="~/CrearRegistrosContables.aspx" />
        </div>
    </form>
</body>
</html>
