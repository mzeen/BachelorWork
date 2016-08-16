<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="EncryptDecrypt.aspx.cs" Inherits="EncryptDecrypt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
      <table style="width: 738px;">
                        <tr>
                            <td align="center" colspan="2" 
                                style="width: 140px; height: 500px; border-right: gray thin dotted;" 
                                valign="top">
                                &nbsp;&nbsp;
                            </td>
                            <td align="center" colspan="1" style="width: 600px; height: 450px;" 
                                valign="top">
                                <asp:Panel ID="pnlinfo" runat="server" Height="30px" SkinID="MessageWindow" Width="400px">
                                    <asp:Literal ID="lblErrorMsg" runat="server"></asp:Literal></asp:Panel>
                                <table border="0" cellspacing="0" cellpadding="0" style="width: 560px">
                                    <tr>
                                        <td align="left" colspan="3" style="height: 19px">
                                            <asp:Label ID="Label16" runat="server" CssClass="pagessubtitle" Text="Encryption ID"
                                                Width="329px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="2" style="height: 19px">
                                            &nbsp;&nbsp;
                                        </td>
                                        <td align="left" style="width: 270px; height: 19px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px; height: 19px;" align="right">
                                            <asp:Label ID="lblEmailID" runat="server" Text="* ID"></asp:Label></td>
                                        <td align="left" colspan="2" style="height: 19px">
                                            <asp:TextBox ID="txtID" runat="server" Width="383px"></asp:TextBox>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px" align="right">
                                            </td>
                                        <td align="left" width="130">
                                            &nbsp;
                                        </td>
                                        <td style="width: 270px" align="left">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px" align="right">
                                            </td>
                                        <td align="left" width="130">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Encrypt" 
                                                onclick="btnSubmit_Click" /></td>
                                        <td style="width: 270px" align="left">
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Decypt" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px" align="right">
                                            </td>
                                        <td align="left" width="130">
                                            </td>
                                        <td style="width: 270px" align="left">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px" align="right">
                                            <asp:Label ID="Label1" runat="server" Text="* Encryt ID"></asp:Label></td>
                                        <td align="left" colspan="2">
                                            <asp:TextBox ID="txtRes" runat="server" MaxLength="13" Width="383px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px" align="right">
                                            &nbsp;</td>
                                        <td align="left" width="130">
                                            </td>
                                        <td style="width: 270px; text-align: left;" align="left">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 130px" align="right">
                                        </td>
                                        <td align="left" width="130">
                                        </td>
                                        <td style="width: 270px" align="left">
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                &nbsp;<br />
                                &nbsp;&nbsp;
                                <br />
                                &nbsp;</td>
                        </tr>
                        </table>
</asp:Content>

