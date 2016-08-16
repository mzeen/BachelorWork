<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mask.aspx.cs" Inherits="Ajax_Animation" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register namespace="AjaxControlToolkit" tagprefix="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">


.demoheading {
	padding-bottom:20px;
	color:#5377A9;
	font-family:Arial, Sans-Serif;
	font-weight:bold;
	font-size:1.5em;
}

strong {font-weight:bold;}

em {font-style:italic}

        .style1
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 0;
            padding: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <strong>Enter a Number (format: <em>9,999,999.99</em>):</strong> 
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:MaskedEditExtender ID="TextBox1_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    InputDirection="RightToLeft" Mask="9,999,999.99" MaskType="Number" 
                    TargetControlID="TextBox1">
                </asp:MaskedEditExtender>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <br />
                <strong>Enter Time (format: <em>99:99:99</em>):</strong> 
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:MaskedEditExtender ID="TextBox7_MaskedEditExtender" runat="server" 
                    AcceptAMPM="True" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99:99:99" MaskType="Time" TargetControlID="TextBox7">
                </asp:MaskedEditExtender>
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
                
                <strong>Enter Date (format: <em>99/99/9999</em>):</strong> 
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox8">
                </asp:CalendarExtender>
                <asp:MaskedEditExtender ID="TextBox8_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox8">
                </asp:MaskedEditExtender>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:Button ID="Button4" runat="server" Text="Button" />
                <asp:ModalPopupExtender ID="Button4_ModalPopupExtender" runat="server" 
                    CancelControlID="Button2" DynamicServicePath="" Enabled="True" 
                    OkControlID="Button3" PopupControlID="Panel1" TargetControlID="Button4">
                </asp:ModalPopupExtender>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:Panel ID="Panel1" runat="server" Height="72px" Width="152px">
                    dsadsad<br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="ok" />
                    <asp:Button ID="Button3" runat="server" Text="cancel" />
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <strong>Enter Date and Time (format: <em>99/99/9999 99:99:99</em>)</strong> 
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:MaskedEditExtender ID="TextBox9_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    ErrorTooltipEnabled="True" Mask="99/99/9999 99:99:99" MaskType="DateTime" 
                    TargetControlID="TextBox9">
                </asp:MaskedEditExtender>
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
                
                <asp:Button ID="Button1" runat="server" Text="Click" onclick="Button1_Click" />
                <asp:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server" 
                    CancelControlID="ButtonCancel" DynamicServicePath="" Enabled="True" 
                    OkControlID="ButtonOk" TargetControlID="Button1" PopupControlID="PNL">
                </asp:ModalPopupExtender>
                <asp:Panel ID="PNL" runat="server" style="display:none; width:200px; background-color:White; border-width:2px; border-color:Black; border-style:solid; padding:20px;">
                        Are you sure you want to click the Button?
                        <br /><br />
                        <div style="text-align:right;">
                            <asp:Button ID="ButtonOk" runat="server" Text="OK" />
                            <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" />
                        </div>
                </asp:Panel>
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
                <div class="style1">
                </div>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

