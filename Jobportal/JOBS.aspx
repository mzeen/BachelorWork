<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="JOBS.aspx.cs" Inherits="JOBS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="last" 
                    Text="JOBS DETAIL INFORMMATION"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="JOB_ID" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" 
                            ShowDeleteButton="True" />
                        <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="JOB_ID" Visible="False" />
                        <asp:BoundField DataField="JOB_DESC" HeaderText="JOB_DESC" 
                            SortExpression="JOB_DESC" />
                        <asp:TemplateField HeaderText="TYPE_ID" SortExpression="TYPE_ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TYPE_ID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" 
                                    DataSourceID="SqlDataSourcetypeG" DataTextField="NAME" DataValueField="TYPE_ID" 
                                    Enabled="False" SelectedValue='<%# Bind("TYPE_ID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourcetypeG" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JOB_PORTALConnectionString %>" 
                                    SelectCommand="SELECT [TYPE_ID], [NAME] FROM [JOB_TYPE]">
                                </asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="COUNTRY_ID" SortExpression="COUNTRY_ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("COUNTRY_ID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" 
                                    DataSourceID="SqlDataSourceCOUNTRYG" DataTextField="COUNTRY_NAME" 
                                    DataValueField="COUNTRY_ID" Enabled="False" 
                                    SelectedValue='<%# Bind("COUNTRY_ID") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceCOUNTRYG" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:JOB_PORTALConnectionString %>" 
                                    SelectCommand="SELECT [COUNTRY_ID], [COUNTRY_NAME] FROM [COUNTRY]">
                                </asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:JOB_PORTALConnectionString %>" 
                    DeleteCommand="DELETE FROM [JOBS] WHERE [JOB_ID] = @JOB_ID" 
                    InsertCommand="INSERT INTO [JOBS] ([JOB_DESC], [TYPE_ID], [COUNTRY_ID]) VALUES (@JOB_DESC, @TYPE_ID, @COUNTRY_ID)" 
                    SelectCommand="SELECT * FROM [JOBS]" 
                    UpdateCommand="UPDATE [JOBS] SET [JOB_DESC] = @JOB_DESC, [TYPE_ID] = @TYPE_ID, [COUNTRY_ID] = @COUNTRY_ID WHERE [JOB_ID] = @JOB_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="JOB_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="JOB_DESC" Type="String" />
                        <asp:Parameter Name="TYPE_ID" Type="Int32" />
                        <asp:Parameter Name="COUNTRY_ID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="JOB_DESC" Type="String" />
                        <asp:Parameter Name="TYPE_ID" Type="Int32" />
                        <asp:Parameter Name="COUNTRY_ID" Type="Int32" />
                        <asp:Parameter Name="JOB_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    DataKeyNames="JOB_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                    <EditItemTemplate>
                        JOB_ID:
                        <asp:Label ID="JOB_IDLabel1" runat="server" Text='<%# Eval("JOB_ID") %>' />
                        <br />
                        JOB_DESC:
                        <asp:TextBox ID="JOB_DESCTextBox" runat="server" 
                            Text='<%# Bind("JOB_DESC") %>' />
                        <br />
                        TYPE_ID:
                        <asp:TextBox ID="TYPE_IDTextBox" runat="server" Text='<%# Bind("TYPE_ID") %>' />
                        <br />
                        COUNTRY_ID:
                        <asp:TextBox ID="COUNTRY_IDTextBox" runat="server" 
                            Text='<%# Bind("COUNTRY_ID") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <HeaderTemplate>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="INSERT JOB HERE"></asp:Label>
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        : <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Save Record" />
                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel Record" />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    JOB DESC</td>
                                <td align="left">
                                    <asp:TextBox ID="JOB_DESCTextBox" runat="server" 
                                        Text='<%# Bind("JOB_DESC") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    TYPE</td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="SqlDataSourceTYPE" DataTextField="NAME" DataValueField="TYPE_ID" 
                                        SelectedValue='<%# Bind("TYPE_ID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceTYPE" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:JOB_PORTALConnectionString %>" 
                                        SelectCommand="SELECT * FROM [JOB_TYPE]"></asp:SqlDataSource>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    COUNTRY</td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        DataSourceID="SqlDataSourceCOUNTRY" DataTextField="COUNTRY_NAME" 
                                        DataValueField="COUNTRY_ID" SelectedValue='<%# Bind("COUNTRY_ID") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceCOUNTRY" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:JOB_PORTALConnectionString %>" 
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
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        JOB_ID:
                        <asp:Label ID="JOB_IDLabel" runat="server" Text='<%# Eval("JOB_ID") %>' />
                        <br />
                        JOB_DESC:
                        <asp:Label ID="JOB_DESCLabel" runat="server" Text='<%# Bind("JOB_DESC") %>' />
                        <br />
                        TYPE_ID:
                        <asp:Label ID="TYPE_IDLabel" runat="server" Text='<%# Bind("TYPE_ID") %>' />
                        <br />
                        COUNTRY_ID:
                        <asp:Label ID="COUNTRY_IDLabel" runat="server" 
                            Text='<%# Bind("COUNTRY_ID") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

