<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultas.aspx.cs" Inherits="proyecto_estadías.consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="estilos/form.css"/>
</head>
<body>
    <form id="form1" runat="server" action="https://formsubmit.co/ulloakev120@gmail.com" method="POST">
    <table>
        <tr>
            <td>
                <asp:Label ID="lbNombre" runat="server" Text="Nombre:"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="tbNombre" runat="server" CssClass="textbox"></asp:TextBox>
          
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" 
                    ControlToValidate="tbNombre"
                    ErrorMessage="El nombre es obligatorio"
                    CssClass="error-message"
                    Display="Dynamic">*
                </asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lbTelefono" runat="server" Text="Telefono:"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="tbTelefono" runat="server" CssClass="Telefono"></asp:TextBox>
     
                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" 
                    ControlToValidate="tbTelefono"
                    ErrorMessage="El teléfono es obligatorio"
                    CssClass="error-message"
                    Display="Dynamic">*
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbPaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="tbPaterno" runat="server" CssClass="textbox"></asp:TextBox>
       
                <asp:RequiredFieldValidator ID="rfvMaterno" runat="server" 
                    ControlToValidate="tbMaterno"
                    ErrorMessage="El apellido materno es obligatorio"
                    CssClass="error-message"
                    Display="Dynamic">*
                </asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lbMaetrno" runat="server" Text="Apellido Materno:"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="tbMaterno" runat="server" CssClass="textbox"></asp:TextBox>
             
                <asp:RequiredFieldValidator ID="rfvPaterno" runat="server" 
                    ControlToValidate="tbPaterno"
                    ErrorMessage="El apellido paterno es obligatorio"
                    CssClass="error-message"
                    Display="Dynamic">*
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbCorreo" runat="server" Text="Correo Electrónico:"></asp:Label>
                
            </td>
            <td colspan="3">
                <asp:TextBox ID="tbCorreo" runat="server" CssClass="textbox"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" 
                    ControlToValidate="tbCorreo"
                    ErrorMessage="El correo electrónico es obligatorio"
                    CssClass="error-message"
                    Display="Dynamic">*
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCorreo" runat="server"
                    ControlToValidate="tbCorreo"
                    ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                    ErrorMessage="Formato de correo inválido"
                    CssClass="error-message"
                    Display="Dynamic">*
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbAsunto" runat="server" Text="Asunto: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbAsunto" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
    </table>
    
    <!-- Mensajes de validación resumidos -->
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        HeaderText="Por favor complete los siguientes campos:"
        CssClass="validation-summary"/>
    
    <table>
        <tr>
            <td>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                    CssClass="botonIS" OnClick="btnGuardar_Click"/>
            </td>
            <td>
                <a href="index.html" class="boton-regresar">Regresar al Inicio</a>
            </td>
        </tr>
    </table>
        <div id="customAlert" class="notificacion">
    <span>✔ Su consulta fue enviada con éxito</span>
    <span class="cerrar" onclick="cerrarNotificacion()">×</span>
</div>
        <script>
            function mostrarNotificacion() {
                const notificacion = document.getElementById('customAlert');
                notificacion.classList.add('mostrar');

                // Ocultar automáticamente después de 4 segundos
                setTimeout(() => {
                    cerrarNotificacion();
                }, 4000);
            }

            function cerrarNotificacion() {
                const notificacion = document.getElementById('customAlert');
                notificacion.classList.remove('mostrar');
            }
        </script>
        <input type="hidden" name="_next" value="http://localhost:50601" />
        <input type="hidden" name="_captcha" value="false" />

</form>
</body>
</html>
