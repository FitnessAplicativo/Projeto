<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Informacao.aspx.cs" Inherits="FitnessApp.Informacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        MINHAS INFORMAÇÕES
    </h2>
    <p>
        Digite aqui seus dados mais especificos para análise.
    </p>
    <p>
        Use o formulário abaixo.
    </p>
    <div class="menu">
        <fieldset class="register">
            <legend>Informações do Usuário</legend>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblPeso" runat="server">Peso:</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPeso" runat="server" CssClass="textEntry"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAltura" runat="server">Altura:</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtAltura" runat="server" CssClass="textEntry"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblIdade" runat="server" Width="150px">Idade:</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtIdade" runat="server" CssClass="textEntry"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSexo" runat="server" Width="150px" CssClass="textEntry">Sexo:</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="rbtSexoMasc" runat="server" GroupName="rbtSexo" Text="Masculino" Width="50%"/>
                        <asp:RadioButton ID="rbtSexoFem" runat="server" GroupName="rbtSexo" Text="Feminino"  Width="50%"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblObjetivo" runat="server"  CssClass="textEntry">Objetivo Final:</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlObjetivo" runat="server" Width="100%" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <p class="submitButton">
            <asp:Button ID="btnCadastrar" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancelar" />
        </p>
    </div>
</asp:Content>
