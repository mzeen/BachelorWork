<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SEARCH.aspx.cs" Inherits="SEARCH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
      <table style="width:100%;">
          <tr>
              <td colspan="3">
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                      AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                      BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                      DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                      <Columns>
                          <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <table style="width:100%;">
                                      <tr>
                                          <td colspan="3">
                                              <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                                                  Font-Size="X-Large" ForeColor="Blue" Text='<%# Bind("ProductName") %>'></asp:Label>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                                                  Font-Size="X-Large" ForeColor="#CC99FF" Text='<%# Bind("CategoryName") %>'></asp:Label>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                      <tr>
                                          <td>
                                              <asp:Label ID="Label3" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                                          </td>
                                          <td>
                                              &nbsp;</td>
                                          <td>
                                              &nbsp;</td>
                                      </tr>
                                  </table>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                      <FooterStyle BackColor="White" ForeColor="#000066" />
                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                      <RowStyle ForeColor="#000066" />
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                      SelectCommand="SELECT * FROM [Alphabetical list of products] WHERE ([CategoryID] = @CategoryID)">
                      <SelectParameters>
                          <asp:QueryStringParameter DefaultValue="1" Name="CategoryID" 
                              QueryStringField="CAT_ID" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
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
  </div>
</asp:Content>

