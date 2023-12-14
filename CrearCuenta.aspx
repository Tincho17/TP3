<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="TP3.CrearCuenta"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crear Cuenta</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Crear Nueva Cuenta</h3>
            <asp:TextBox ID="txtDescripcion" runat="server" placeholder="Descripción de la cuenta"></asp:TextBox>
            <asp:Label ID="lblMensaje" runat="server" ForeColor="Green" Visible="false"></asp:Label>

            <asp:Button ID="btnCrear" runat="server" Text="Crear Cuenta" OnClick="btnCrear_Click" />
            <br /><br />
            <asp:HyperLink ID="lnkListar" runat="server" Text="Ir a Listar Cuentas" NavigateUrl="~/ListarCuentas.aspx" />
                        <br /><br />
            <asp:HyperLink ID="VolverMenu" runat="server" Text="Volver al Menu" NavigateUrl="~/MenuCrear.aspx" />

        </div>
    </form>
</body>
</html>