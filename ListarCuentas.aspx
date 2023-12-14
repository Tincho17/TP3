<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCuentas.aspx.cs" Inherits="TP3.ListarCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buscar y Editar Cuenta</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Buscar y Editar Cuenta</h3>
            <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
            <br />
            <label>Ingrese ID de Cuenta:</label>
            <asp:TextBox ID="txtBuscarId" runat="server" placeholder="Ingrese ID"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <br /><br />
            <label>ID de Cuenta:</label>
            <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            <label>Descripción de Cuenta:</label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
             <br />
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Descripción" OnClick="btnActualizar_Click" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar Cuenta" OnClick="btnEliminar_Click" />
            <br /><br />
            <asp:HyperLink ID="lnkListar" runat="server" Text="Volver a crear Cuentas" NavigateUrl="~/CrearCuenta.aspx" />
            <br /><br />
            <asp:HyperLink ID="VolverMenu" runat="server" Text="Volver al Menu" NavigateUrl="~/MenuCrear.aspx" />
        </div>
    </form>
</body>
</html>
