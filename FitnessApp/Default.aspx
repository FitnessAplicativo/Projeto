<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="FitnessApp._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        BEM VINDO!
    </h2>
    <div>
        <center>
            <asp:Panel ID="pnlDadosUsuario" runat="server" Visible="true" Width="75%" CssClass="header">            
                <table width="100%" border="2">
                    <tr>
                        <td align="left" colspan="2">
                           <h3> <asp:Label ID="lblNome" runat="server" Text="" Font-Bold="true" Font-Size="Larger" /> </h3>
                        </td>                       
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lblAltura" runat="server" Text="Altura:" Font-Bold="true" Font-Size="Large" />
                            <asp:Label ID="lblDescAltura" runat="server" Font-Size="Large" />
                        </td>
                        <td align="left">
                            <asp:Label ID="lblPesoMeta" runat="server" Text="Peso Meta:" Font-Bold="true" Font-Size="Large" />
                            <asp:Label ID="lblDescPesoMeta" runat="server" Font-Size="Large"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lblPesoInicial" runat="server" Text="Peso Inicial:" Font-Bold="true" Font-Size="Large" />
                            <asp:Label ID="lblDescPesoInicial" runat="server" Font-Size="Large" />
                        </td>
                        <td align="left">
                            <asp:Label ID="lblDieta" runat="server" Text="Dieta" Font-Bold="true" Font-Size="Large" />
                            <asp:Label ID="lblDescDieta" runat="server" Font-Size="Large" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lblPesoAtual" runat="server" Text="Peso Atual:" Font-Bold="true" Font-Size="Large" />
                            <asp:Label ID="lblDescPesoAtual" runat="server" Font-Size="Large" />
                        </td>
                        <td align="left">
                            <asp:Label ID="lblTempo" runat="server" Text="Tempo:" Font-Bold="true" Font-Size="Large" />
                            <asp:Label ID="lblDescTempo" runat="server" Font-Size="Large" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </center>
    </div>
    &nbsp;
    <div>
        <center>
            <asp:panel ID="pnlOpcoes" runat="server" Visible="true" Width="75%" >
                <table width="100%">
                    <tr>
                        <td align="right" style="width:200px;">
                            &nbsp;
                        </td>
                        <td align="center" >
                            <h3>
                                <asp:Label ID="lblTitProgAlim" runat="server" Text="MEU PROGRAMA" Font-Size="Large"/>
                            </h3>
                            <h4>
                                <asp:Label ID="lblTitProgAlim2" runat="server" Text="ALIMENTAR" Font-Bold="true" Font-Size="Large" />
                            </h4>
                        </td>
                    </tr>  
                    <tr>
                        <td align="right">
                            <asp:Image ID="imgTabelaAlimento" runat="server" ImageUrl="~/Imagens/TabelaAlimento.png" />
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTabAlim" runat="server" Font-Bold="true" Text="Tabela de Alimentos" />
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="lnkDescTabAlim" runat="server" Text="Descubra quantas calorias existem em cada alimento"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr> 
                    <tr>
                        <td align="right">
                            <asp:Image ID="imgPeso" runat="server" ImageUrl="~/Imagens/Peso.png" />
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTabPeso" runat="server" Font-Bold="true" Text="Meu Peso" />
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="lnkDescTabPeso" runat="server" Text="Inclua seu peso do dia e acompanhe a sua evolução"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>     
                    <tr>
                        <td align="right">
                            <asp:Image ID="imgAvaliacao" runat="server" ImageUrl="~/Imagens/Avaliacao.png" />
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTabAvaliacao" runat="server" Font-Bold="true" Text="Avaliação" />
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="lnkDescTabAvaliacao" runat="server" Text="Descubra a dieta indicada para você"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>                                                                                             
                </table>
            </asp:panel>   
        </center>
    </div>
</asp:Content>
