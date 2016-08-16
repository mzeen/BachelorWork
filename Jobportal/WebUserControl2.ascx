<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl2.ascx.cs" Inherits="WebUserControl2" %>
<table style="width: 52%; height: 136px;">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:FREEBOOKConnectionString %>" 
                SelectCommand="SELECT [SCRIPT_FILE], [LOG_FILE] FROM [P_SCRIPT_LOG]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                PageSize="5">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="SCRIPT_FILE" HeaderText="SCRIPT_FILE" 
                        SortExpression="SCRIPT_FILE" />
                    <asp:BoundField DataField="LOG_FILE" HeaderText="LOG_FILE" 
                        SortExpression="LOG_FILE" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
