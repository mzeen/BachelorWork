<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="NEWS.aspx.cs" Inherits="NEWS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NEWS_ID" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowSelectButton="True" />
        <asp:BoundField DataField="NEWS_ID" HeaderText="NEWS_ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="NEWS_ID" />
        <asp:BoundField DataField="NEWS_TITLE" HeaderText="NEWS_TITLE" 
            SortExpression="NEWS_TITLE" />
        <asp:BoundField DataField="NEWS_DESC" HeaderText="NEWS_DESC" 
            SortExpression="NEWS_DESC" />
        <asp:BoundField DataField="NEWS_TYPE" HeaderText="NEWS_TYPE" 
            SortExpression="NEWS_TYPE" />
        <asp:BoundField DataField="PUBLISH_DATE" HeaderText="PUBLISH_DATE" 
            SortExpression="PUBLISH_DATE" />
        <asp:BoundField DataField="EXPIRY_DATE" HeaderText="EXPIRY_DATE" 
            SortExpression="EXPIRY_DATE" />
        <asp:BoundField DataField="TRS_TYPE" HeaderText="TRS_TYPE" 
            SortExpression="TRS_TYPE" />
        <asp:BoundField DataField="TRS_TIME" HeaderText="TRS_TIME" 
            SortExpression="TRS_TIME" />
        <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
            SortExpression="STATUS" />
        <asp:BoundField DataField="FILE_NAME" HeaderText="FILE_NAME" 
            SortExpression="FILE_NAME" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
    DeleteCommand="DELETE FROM [INDC_NEWS] WHERE [NEWS_ID] = @NEWS_ID" 
    InsertCommand="INSERT INTO [INDC_NEWS] ([NEWS_TITLE], [NEWS_DESC], [NEWS_TYPE], [PUBLISH_DATE], [EXPIRY_DATE], [TRS_TYPE], [TRS_TIME], [STATUS], [FILE_NAME]) VALUES (@NEWS_TITLE, @NEWS_DESC, @NEWS_TYPE, @PUBLISH_DATE, @EXPIRY_DATE, @TRS_TYPE, @TRS_TIME, @STATUS, @FILE_NAME)" 
    SelectCommand="SELECT * FROM [INDC_NEWS]" 
    UpdateCommand="UPDATE [INDC_NEWS] SET [NEWS_TITLE] = @NEWS_TITLE, [NEWS_DESC] = @NEWS_DESC, [NEWS_TYPE] = @NEWS_TYPE, [PUBLISH_DATE] = @PUBLISH_DATE, [EXPIRY_DATE] = @EXPIRY_DATE, [TRS_TYPE] = @TRS_TYPE, [TRS_TIME] = @TRS_TIME, [STATUS] = @STATUS, [FILE_NAME] = @FILE_NAME WHERE [NEWS_ID] = @NEWS_ID">
    <DeleteParameters>
        <asp:Parameter Name="NEWS_ID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NEWS_TITLE" Type="String" />
        <asp:Parameter Name="NEWS_DESC" Type="String" />
        <asp:Parameter Name="NEWS_TYPE" Type="String" />
        <asp:Parameter Name="PUBLISH_DATE" Type="DateTime" />
        <asp:Parameter Name="EXPIRY_DATE" Type="DateTime" />
        <asp:Parameter Name="TRS_TYPE" Type="String" />
        <asp:Parameter Name="TRS_TIME" Type="DateTime" />
        <asp:Parameter Name="STATUS" Type="String" />
        <asp:Parameter Name="FILE_NAME" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NEWS_TITLE" Type="String" />
        <asp:Parameter Name="NEWS_DESC" Type="String" />
        <asp:Parameter Name="NEWS_TYPE" Type="String" />
        <asp:Parameter Name="PUBLISH_DATE" Type="DateTime" />
        <asp:Parameter Name="EXPIRY_DATE" Type="DateTime" />
        <asp:Parameter Name="TRS_TYPE" Type="String" />
        <asp:Parameter Name="TRS_TIME" Type="DateTime" />
        <asp:Parameter Name="STATUS" Type="String" />
        <asp:Parameter Name="FILE_NAME" Type="String" />
        <asp:Parameter Name="NEWS_ID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="NEWS_ID" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            NEWS_ID:
            <asp:Label ID="NEWS_IDLabel1" runat="server" Text='<%# Eval("NEWS_ID") %>' />
            <br />
            NEWS_TITLE:
            <asp:TextBox ID="NEWS_TITLETextBox" runat="server" 
                Text='<%# Bind("NEWS_TITLE") %>' />
            <br />
            NEWS_DESC:
            <asp:TextBox ID="NEWS_DESCTextBox" runat="server" 
                Text='<%# Bind("NEWS_DESC") %>' />
            <br />
            NEWS_TYPE:
            <asp:TextBox ID="NEWS_TYPETextBox" runat="server" 
                Text='<%# Bind("NEWS_TYPE") %>' />
            <br />
            PUBLISH_DATE:
            <asp:TextBox ID="PUBLISH_DATETextBox" runat="server" 
                Text='<%# Bind("PUBLISH_DATE") %>' />
            <br />
            EXPIRY_DATE:
            <asp:TextBox ID="EXPIRY_DATETextBox" runat="server" 
                Text='<%# Bind("EXPIRY_DATE") %>' />
            <br />
            TRS_TYPE:
            <asp:TextBox ID="TRS_TYPETextBox" runat="server" 
                Text='<%# Bind("TRS_TYPE") %>' />
            <br />
            TRS_TIME:
            <asp:TextBox ID="TRS_TIMETextBox" runat="server" 
                Text='<%# Bind("TRS_TIME") %>' />
            <br />
            STATUS:
            <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
            <br />
            FILE_NAME:
            <asp:TextBox ID="FILE_NAMETextBox" runat="server" 
                Text='<%# Bind("FILE_NAME") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            NEWS_TITLE:
            <asp:TextBox ID="NEWS_TITLETextBox" runat="server" 
                Text='<%# Bind("NEWS_TITLE") %>' />
            <br />
            NEWS_DESC:
            <asp:TextBox ID="NEWS_DESCTextBox" runat="server" 
                Text='<%# Bind("NEWS_DESC") %>' />
            <br />
            NEWS_TYPE:
            <asp:TextBox ID="NEWS_TYPETextBox" runat="server" 
                Text='<%# Bind("NEWS_TYPE") %>' />
            <br />
            PUBLISH_DATE:
            <asp:TextBox ID="PUBLISH_DATETextBox" runat="server" 
                Text='<%# Bind("PUBLISH_DATE") %>' />
            <br />
            EXPIRY_DATE:
            <asp:TextBox ID="EXPIRY_DATETextBox" runat="server" 
                Text='<%# Bind("EXPIRY_DATE") %>' />
            <br />
            TRS_TYPE:
            <asp:TextBox ID="TRS_TYPETextBox" runat="server" 
                Text='<%# Bind("TRS_TYPE") %>' />
            <br />
            TRS_TIME:
            <asp:TextBox ID="TRS_TIMETextBox" runat="server" 
                Text='<%# Bind("TRS_TIME") %>' />
            <br />
            STATUS:
            <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
            <br />
            FILE_NAME:
            <asp:TextBox ID="FILE_NAMETextBox" runat="server" 
                Text='<%# Bind("FILE_NAME") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            NEWS_ID:
            <asp:Label ID="NEWS_IDLabel" runat="server" Text='<%# Eval("NEWS_ID") %>' />
            <br />
            NEWS_TITLE:
            <asp:Label ID="NEWS_TITLELabel" runat="server" 
                Text='<%# Bind("NEWS_TITLE") %>' />
            <br />
            NEWS_DESC:
            <asp:Label ID="NEWS_DESCLabel" runat="server" Text='<%# Bind("NEWS_DESC") %>' />
            <br />
            NEWS_TYPE:
            <asp:Label ID="NEWS_TYPELabel" runat="server" Text='<%# Bind("NEWS_TYPE") %>' />
            <br />
            PUBLISH_DATE:
            <asp:Label ID="PUBLISH_DATELabel" runat="server" 
                Text='<%# Bind("PUBLISH_DATE") %>' />
            <br />
            EXPIRY_DATE:
            <asp:Label ID="EXPIRY_DATELabel" runat="server" 
                Text='<%# Bind("EXPIRY_DATE") %>' />
            <br />
            TRS_TYPE:
            <asp:Label ID="TRS_TYPELabel" runat="server" Text='<%# Bind("TRS_TYPE") %>' />
            <br />
            TRS_TIME:
            <asp:Label ID="TRS_TIMELabel" runat="server" Text='<%# Bind("TRS_TIME") %>' />
            <br />
            STATUS:
            <asp:Label ID="STATUSLabel" runat="server" Text='<%# Bind("STATUS") %>' />
            <br />
            FILE_NAME:
            <asp:Label ID="FILE_NAMELabel" runat="server" Text='<%# Bind("FILE_NAME") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

