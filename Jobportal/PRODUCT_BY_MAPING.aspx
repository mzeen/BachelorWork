<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PRODUCT_BY_MAPING.aspx.cs" Inherits="PRODUCT_BY_MAPING" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" 
                    DataSourceID="SqlDataSource1" AllowPaging="True">
                    <EditItemTemplate>
                        ProductID:
                        <asp:Label ID="ProductIDLabel1" runat="server" 
                            Text='<%# Eval("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" 
                            Text='<%# Bind("ProductName") %>' />
                        <br />
                        SupplierID:
                        <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                            Text='<%# Bind("SupplierID") %>' />
                        <br />
                        CategoryID:
                        <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                            Text='<%# Bind("CategoryID") %>' />
                        <br />
                        QuantityPerUnit:
                        <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                            Text='<%# Bind("QuantityPerUnit") %>' />
                        <br />
                        UnitPrice:
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                            Text='<%# Bind("UnitPrice") %>' />
                        <br />
                        UnitsInStock:
                        <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                            Text='<%# Bind("UnitsInStock") %>' />
                        <br />
                        UnitsOnOrder:
                        <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                            Text='<%# Bind("UnitsOnOrder") %>' />
                        <br />
                        ReorderLevel:
                        <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                            Text='<%# Bind("ReorderLevel") %>' />
                        <br />
                        Discontinued:
                        <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                            Checked='<%# Bind("Discontinued") %>' />
                        <br />
                        CategoryName:
                        <asp:TextBox ID="CategoryNameTextBox" runat="server" 
                            Text='<%# Bind("CategoryName") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" 
                            Text='<%# Bind("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" 
                            Text='<%# Bind("ProductName") %>' />
                        <br />
                        SupplierID:
                        <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                            Text='<%# Bind("SupplierID") %>' />
                        <br />
                        CategoryID:
                        <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                            Text='<%# Bind("CategoryID") %>' />
                        <br />
                        QuantityPerUnit:
                        <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                            Text='<%# Bind("QuantityPerUnit") %>' />
                        <br />
                        UnitPrice:
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                            Text='<%# Bind("UnitPrice") %>' />
                        <br />
                        UnitsInStock:
                        <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                            Text='<%# Bind("UnitsInStock") %>' />
                        <br />
                        UnitsOnOrder:
                        <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                            Text='<%# Bind("UnitsOnOrder") %>' />
                        <br />
                        ReorderLevel:
                        <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                            Text='<%# Bind("ReorderLevel") %>' />
                        <br />
                        Discontinued:
                        <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                            Checked='<%# Bind("Discontinued") %>' />
                        <br />
                        CategoryName:
                        <asp:TextBox ID="CategoryNameTextBox" runat="server" 
                            Text='<%# Bind("CategoryName") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ProductID:
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:Label ID="ProductNameLabel" runat="server" 
                            Text='<%# Bind("ProductName") %>' />
                        <br />
                        SupplierID:
                        <asp:Label ID="SupplierIDLabel" runat="server" 
                            Text='<%# Bind("SupplierID") %>' />
                        <br />
                        CategoryID:
                        <asp:Label ID="CategoryIDLabel" runat="server" 
                            Text='<%# Bind("CategoryID") %>' />
                        <br />
                        QuantityPerUnit:
                        <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                            Text='<%# Bind("QuantityPerUnit") %>' />
                        <br />
                        UnitPrice:
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                        <br />
                        UnitsInStock:
                        <asp:Label ID="UnitsInStockLabel" runat="server" 
                            Text='<%# Bind("UnitsInStock") %>' />
                        <br />
                        UnitsOnOrder:
                        <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                            Text='<%# Bind("UnitsOnOrder") %>' />
                        <br />
                        ReorderLevel:
                        <asp:Label ID="ReorderLevelLabel" runat="server" 
                            Text='<%# Bind("ReorderLevel") %>' />
                        <br />
                        Discontinued:
                        <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                            Checked='<%# Bind("Discontinued") %>' Enabled="false" />
                        <br />
                        CategoryName:
                        <asp:Label ID="CategoryNameLabel" runat="server" 
                            Text='<%# Bind("CategoryName") %>' />
                        <br />

                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [Alphabetical list of products] WHERE ([CategoryName] = @CategoryName)">
                    <SelectParameters>
                        <asp:RouteParameter DefaultValue="1" Name="CategoryName" RouteKey="CAT_NAME" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

