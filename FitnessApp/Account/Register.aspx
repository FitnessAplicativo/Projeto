<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="FitnessApp.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <h2>
                        CRIE UMA NOVA CONTA
                    </h2>
                    <p>
                        Use o formulario para criar sua nova conta.
                    </p>
                    <p>
                        Sua senha irá requirir um número minimo de
                        <%= Membership.MinRequiredPasswordLength %>
                        caracters.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                        ValidationGroup="RegisterUserValidationGroup" />
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Informações da conta</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nome do usuário:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                    CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                    ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"
                                    Width="120px">Confirme sua senha:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                    Display="Dynamic" ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired"
                                    runat="server" ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                    ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                    ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>
                            <p>
                                <asp:Label ID="lblPeso" runat="server">Peso:</asp:Label>
                                <asp:TextBox ID="txtPeso" runat="server" CssClass="textEntry"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="lblAltura" runat="server">Altura:</asp:Label>
                                <asp:TextBox ID="txtAltura" runat="server" CssClass="textEntry"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="lblIdade" runat="server" Width="150px">Idade:</asp:Label>
                                <asp:TextBox ID="txtIdade" runat="server" CssClass="textEntry"></asp:TextBox>
                            </p>
                            <p>
                                <asp:Label ID="lblSexo" runat="server" Width="150px" CssClass="textEntry">Sexo:</asp:Label>
                            </p>
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rbtSexoMasc" runat="server" GroupName="rbtSexo" Text="Masculino"
                                            Width="50%" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="rbtSexoFem" runat="server" GroupName="rbtSexo" Text="Feminino"
                                            Width="50%" />
                                    </td>
                                </tr>
                            </table>
                            <p>
                                <asp:Label ID="lblObjetivo" runat="server"  CssClass="textEntry">Objetivo Final:</asp:Label>
                                <asp:DropDownList ID="ddlObjetivo" runat="server" Width="100%" />
                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Criar o usuário"
                                ValidationGroup="RegisterUserValidationGroup" />
                        </p>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
