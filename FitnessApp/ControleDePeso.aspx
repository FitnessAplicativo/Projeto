<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControleDePeso.aspx.cs" Inherits="FitnessApp.ControleDePeso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <center>
            <table width="100%">
                <tr>
                    <td align="right">
                        <asp:ImageButton ID="imgPeso" runat="server" ImageUrl="~/Imagens/Pesar.PNG" />
                    </td>
                    <td align="left">
                        <asp:ImageButton ID="imgHistorico" runat="server" ImageUrl="~/Imagens/Historico.PNG" />
                    </td>
                </tr>
            </table>
        </center>
    </div>
    &nbsp;
    <center>
        <div style="width:75%">
            <center>
                <asp:Panel ID="pnlPeso" runat="server" Visible="true">
                    <table>
                        <tr>
                            <td colspan="2">
                                <center>
                                    <asp:Label ID="lblDataPesagem" runat="server" Text="Data da pesagem" Font-Bold="true" Font-Size="Large" />
                                </center>    
                            </td>                           
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <asp:Label ID="lblData" runat="server" />
                                </center>
                            </td>
                            <td>
                                <center>
                                    <asp:label ID="lblAlterarData" runat="server" Text="Alterar Data" Font-Bold="true"/>
                                    <asp:Calendar ID="calendar" runat="server" />
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center>
                                    <asp:TextBox ID="txtPeso" runat="server" Font-Bold="true" />
                                </center>
                            </td>                            
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center>
                                    <asp:Button ID="btnPeso" runat="server" Font-Bold="true" Text="Incluir Peso" 
                                        Width="130px" />
                                </center>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </center>
        </div>
    </center>
</asp:Content>
