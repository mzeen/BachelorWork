<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="dowloadData.aspx.cs" Inherits="dowloadData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" 
            Font-Overline="False" Font-Size="Small" Font-Underline="True" ForeColor="Red" 
            Text="NOTE :"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#3366CC" 
            Text="Generate Scripts of Product by categories"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#0066CC" 
            Text="Generated SCRIPTS will be saved at Location &quot;C:\SCRIPTS\SQL\&quot;" 
            Width="501px"></asp:Label>
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                        DataValueField="CategoryID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                        SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Generate Scripts" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

