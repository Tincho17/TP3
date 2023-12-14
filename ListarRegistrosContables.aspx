<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarRegistrosContables.aspx.cs" Inherits="TP3.ListarRegistrosContables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buscar y Editar Registro Contable</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Buscar y Editar Registro Contable</h3>
            <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label>
            <br />
            <label>Ingrese ID de Registro Contable:</label>
            <asp:TextBox ID="txtBuscarId" runat="server" placeholder="Ingrese ID"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <br /><br />
            <label>ID de Registro Contable:</label>
            <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            <label>ID de Cuenta:</label>
            <asp:TextBox ID="txtIdCuenta" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            <label>Monto:</label>
            <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
            <br />
            <label>Tipo:</label>
            <asp:RadioButtonList ID="rbtnTipo" runat="server">
                <asp:ListItem Text="Debe" Value="0" />
                <asp:ListItem Text="Haber" Value="1" />
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Registro Contable" OnClick="btnActualizar_Click" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar Registro Contable" OnClick="btnEliminar_Click" />
            <br /><br />
            <asp:HyperLink ID="lnkListar" runat="server" Text="Volver a crear Registros Contables" NavigateUrl="~/CrearRegistrosContables.aspx" />
            <br /><br />
            <asp:HyperLink ID="VolverMenu" runat="server" Text="Volver al Menu" NavigateUrl="~/MenuCrear.aspx" />
        </div>
    </form>
</body>
</html>