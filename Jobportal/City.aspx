<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                    CellSpacing="1" DataKeyNames="CITY_ID" DataSourceID="SqlDataSource2" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged1">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="COUNTRY_NAME" HeaderText="COUNTRY_NAME" 
                            SortExpression="COUNTRY_NAME" />
                        <asp:TemplateField HeaderText="CITY_NAME" SortExpression="CITY_NAME">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CITY_NAME") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="LBLCITY" runat="server" Text='<%# Bind("CITY_NAME") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="COUNTRY_ID" SortExpression="COUNTRY_ID">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("COUNTRY_ID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="COUNTRYID" runat="server" Text='<%# Bind("COUNTRY_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="CBALL" runat="server" AutoPostBack="True" oncheckedchanged="CBALL_CheckedChanged" 
                                    />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CB" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
                    SelectCommand="SELECT [COUNTRY_NAME], [CITY_NAME], [CITY_ID], [COUNTRY_ID] FROM [COUNTRY_CITY]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="messege" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="drpCountry" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="COUNTRY_NAME" DataValueField="COUNTRY_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
                    SelectCommand="SELECT [COUNTRY_ID], [COUNTRY_NAME] FROM [COUNTRY]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtCITY" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update" />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="DeleteAll" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

