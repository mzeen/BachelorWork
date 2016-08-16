<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.master" AutoEventWireup="true" CodeFile="DataReadFromTextFile.aspx.cs" Inherits="UploadAttachFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:FileUpload ID="fileToRead" runat="server" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="pnlinfo" runat="server" onclick="btnSave_Click" Text="Execute" 
            Width="208px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" Height="61px" Width="204px">
        <asp:Label ID="txtValid" runat="server" Text="txtValid"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblMESSAGE" runat="server" Text="Label"></asp:Label>
    </asp:Panel>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
       
    </p>
</asp:Content>

