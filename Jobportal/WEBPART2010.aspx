<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="WEBPART2010.aspx.cs" Inherits="WEBPART2010" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 219px;
        }
        .style2
        {
            height: 217px;
        }
        .style3
        {
            height: 22px;
        }
        .style4
        {
            height: 22px;
            width: 336px;
        }
        .style5
        {
            height: 219px;
            width: 336px;
        }
        .style6
        {
            height: 217px;
            width: 336px;
        }
        .style7
        {
            height: 22px;
            width: 334px;
        }
        .style8
        {
            height: 219px;
            width: 334px;
        }
        .style9
        {
            height: 217px;
            width: 334px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style4">
                <asp:WebPartManager ID="WebPartManager1" runat="server">
                    <Personalization InitialScope="Shared" />
                </asp:WebPartManager>
            </td>
            <td class="style7">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Menu ID="Menu2" runat="server" onmenuitemclick="Menu2_MenuItemClick" 
                    Orientation="Horizontal">
                </asp:Menu>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:WebPartZone ID="WebPartZone1" runat="server" Height="220px" Width="311px">
                    <ZoneTemplate>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </ZoneTemplate>
                </asp:WebPartZone>
            </td>
            <td class="style8">
                <asp:WebPartZone ID="WebPartZone2" runat="server" Height="225px" Width="330px">
                    <ZoneTemplate>
                        <asp:Image ID="Image1" runat="server" Height="180px" />
                    </ZoneTemplate>
                </asp:WebPartZone>
            </td>
            <td class="style1">
                <asp:WebPartZone ID="WebPartZone3" runat="server" Height="218px" Width="165px">
                    <ZoneTemplate>
                        <asp:Panel ID="Panel1" runat="server" Height="186px">
                        </asp:Panel>
                    </ZoneTemplate>
                </asp:WebPartZone>
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style9">
            </td>
            <td class="style2">
            </td>
        </tr>
    </table>
</asp:Content>

