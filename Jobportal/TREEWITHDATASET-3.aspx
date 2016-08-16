<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TREEWITHDATASET-3.aspx.cs" Inherits="TREEWITHCOMMAND" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:TreeView ID="TreeView1" runat="server" ontreenodepopulate="PopulateNode" 
                    ShowCheckBoxes="Leaf" ShowLines="True">
                    <Nodes>
                        <asp:TreeNode PopulateOnDemand="True" SelectAction="Expand" ShowCheckBox="True" 
                            Text="Categories and Products" Value="Categories and Products">
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
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

