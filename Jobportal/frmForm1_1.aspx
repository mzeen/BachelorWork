<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmForm1_1.aspx.cs" Inherits="Forms_frmForm1_1" Title="Untitled Page" %>

<%@ Register src="ButtonPallet.ascx" tagname="ButtonPallet" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 84%; height: 472px;">
        <tr>
            <td rowspan="3" style="width: 142px" valign="top">
                &nbsp;</td>
            <td colspan="2" style="height: 28px">
                <uc1:ButtonPallet ID="ButtonPallet1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

