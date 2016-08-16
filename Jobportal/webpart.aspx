<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="webpart.aspx.cs" Inherits="webpart" %>

<%@ Register Src="WebUserControl1.ascx" TagName="WebUserControl1" TagPrefix="uc1" %>
<%@ Register Src="WebUserControl2.ascx" TagName="WebUserControl2" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table style="width: 100%; height: 272px;" align="left">
        <tr>
            <td style="width: 216px">
                <asp:WebPartManager ID="MyPartManage" runat="server">
                </asp:WebPartManager>
            </td>
            <td style="width: 232px">
                <asp:Menu ID="PartsMenu" runat="server" Orientation="Horizontal" OnMenuItemClick="PartsMenu_MenuItemClick">
                </asp:Menu>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                <asp:WebPartZone ID="WebPartZone2" runat="server" Height="199px" Width="224px" BorderColor="#CCCCCC"
                    Font-Names="Verdana" HeaderText="Date Information" LayoutOrientation="Horizontal" 
                    Padding="6">
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                    <MenuLabelHoverStyle ForeColor="#D1DDF1" />
                    <MenuPopupStyle BackColor="#507CD1" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbStyle BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                    <ZoneTemplate>
                        <asp:Calendar ID="MyCalendar" runat="server" Caption="Date Information" OnSelectionChanged="Calendar1_SelectionChanged">
                        </asp:Calendar>
                    </ZoneTemplate>
                    <MenuVerbHoverStyle BackColor="#EFF3FB" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <PartChromeStyle BackColor="#EFF3FB" BorderColor="#D1DDF1" Font-Names="Verdana" ForeColor="#333333" />
                    <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                    <MenuLabelStyle ForeColor="White" />
                </asp:WebPartZone>
            </td>
            <td style="width: 232px" valign="top">
                <asp:WebPartZone ID="WebPartZone4" runat="server" Height="160px" Width="223px" BorderColor="#CCCCCC"
                    Font-Names="Verdana" Padding="6" HeaderText="Please Login" 
                    MenuLabelText="MENU">
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                    <MenuLabelHoverStyle ForeColor="#D1DDF1" />
                    <MenuPopupStyle BackColor="#507CD1" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbStyle BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                    <ZoneTemplate>
                        <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
                    </ZoneTemplate>
                    <MenuVerbHoverStyle BackColor="#EFF3FB" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <PartChromeStyle BackColor="#EFF3FB" BorderColor="#D1DDF1" Font-Names="Verdana" ForeColor="#333333" />
                    <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                    <MenuLabelStyle ForeColor="White" />
                </asp:WebPartZone>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 216px" valign="top">
                <asp:WebPartZone ID="WebPartZone3" runat="server" Height="160px" Width="223px" BorderColor="#CCCCCC"
                    Font-Names="Verdana" Padding="6">
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                    <MenuLabelHoverStyle ForeColor="Yellow" />
                    <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbStyle BorderColor="#1C5E55" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <PartTitleStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                    <ZoneTemplate>
                        <asp:Image ID="Image1" runat="server" Height="262px" ImageUrl="~/Images/BANNERFREEBOOK.jpg" />
                    </ZoneTemplate>
                    <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <PartChromeStyle BackColor="#E3EAEB" BorderColor="#C5BBAF" Font-Names="Verdana" ForeColor="#333333" />
                    <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                    <MenuLabelStyle ForeColor="#333333" />
                </asp:WebPartZone>
            </td>
            <td style="width: 232px" valign="top">
                <asp:WebPartZone ID="WebPartZone5" runat="server" Height="168px" Width="216px" BorderColor="#CCCCCC"
                    Font-Names="Verdana" Padding="6">
                    <EmptyZoneTextStyle Font-Size="0.8em" />
                    <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                    <MenuLabelHoverStyle ForeColor="#FFCC66" />
                    <MenuPopupStyle BackColor="#990000" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana"
                        Font-Size="0.6em" />
                    <MenuVerbStyle BorderColor="#990000" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                    <PartTitleStyle BackColor="#990000" Font-Bold="True" Font-Size="0.8em" ForeColor="White" />
                    <MenuVerbHoverStyle BackColor="#FFFBD6" BorderColor="#CCCCCC" BorderStyle="Solid"
                        BorderWidth="1px" ForeColor="#333333" />
                    <PartChromeStyle BackColor="#FFFBD6" BorderColor="#FFCC66" Font-Names="Verdana" ForeColor="#333333" />
                    <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                    <MenuLabelStyle ForeColor="White" />
                </asp:WebPartZone>
            </td>
            <td valign="top">
                <asp:EditorZone runat="server" ID="SimpleEditor" BackColor="#FFFBD6" 
                    BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Padding="6">
                    <FooterStyle BackColor="#FFCC66" HorizontalAlign="Right" />
                    <PartTitleStyle Font-Bold="True" Font-Size="0.8em" ForeColor="#333333" />
                    <PartChromeStyle BorderColor="#FFCC66" BorderStyle="Solid" BorderWidth="1px" />
                    <PartStyle BorderColor="#FFFBD6" BorderWidth="5px" />
                    <LabelStyle Font-Size="0.8em" ForeColor="#333333" />
                    <VerbStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" />
                    <ErrorStyle Font-Size="0.8em" />
                    <EmptyZoneTextStyle Font-Size="0.8em" ForeColor="#333333" />
                    <ZoneTemplate>
                        <asp:PropertyGridEditorPart ID="MyPropertyEditor" runat="server" />
                        <asp:AppearanceEditorPart ID="MyMainEditor" runat="server" />
                         <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                   
                    </ZoneTemplate>
                    <EditUIStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" />
                    <HeaderStyle BackColor="#FFCC66" Font-Bold="True" Font-Size="0.8em" 
                        ForeColor="#333333" />
                    <HeaderVerbStyle Font-Bold="False" Font-Size="0.8em" Font-Underline="False" 
                        ForeColor="#333333" />
                    <InstructionTextStyle Font-Size="0.8em" ForeColor="#333333" />
                </asp:EditorZone>
            </td>
        </tr>
    </table>
</asp:Content>
