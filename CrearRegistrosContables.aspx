<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearRegistrosContables.aspx.cs" Inherits="TP3.CrearRegistrosContables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crear Nuevo Registro Contable</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Crear Nuevo Registro Contable</h3>
            
            <asp:TextBox ID="txtIdCuenta" runat="server" placeholder="ID de la cuenta"></asp:TextBox>
            <asp:TextBox ID="txtMonto" runat="server" placeholder="Monto"></asp:TextBox>
            
            <asp:RadioButtonList ID="rbtnTipo" runat="server">
                <asp:ListItem Text="Debe" Value="0" />
                <asp:ListItem Text="Haber" Value="1" />
            </asp:RadioButtonList>

            <asp:Label ID="lblMensaje" runat="server" ForeColor="Green" Visible="false"></asp:Label>

            <asp:Button ID="btnCrearRegistro" runat="server" Text="Crear Registro Contable" OnClick="btnCrearRegistro_Click" />
            <br /><br />
            <asp:HyperLink ID="lnkListarRegistros" runat="server" Text="Ir a Listar Registros Contables" NavigateUrl="~/ListarRegistrosContables.aspx" />
            <br /><br />
            <asp:HyperLink ID="VolverMenu" runat="server" Text="Volver al Menu" NavigateUrl="~/MenuCrear.aspx" />
        </div>
    </form>
</body>
</html>
