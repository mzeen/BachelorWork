<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <ajaxToolkit:ToolkitScriptManager runat="Server" ID="ScriptManager1" />
     
    <table border="0" cellspacing="0" cellpadding="0" style="width: 738px; height: 558px;">
            <tr>
                <td style="width: 547px;" align="left" valign="top">
                    <center>
                        <asp:Panel ID="pnlinfo" runat="server" SkinID="MessageWindow" Width="400px" Height="30px">
                            <asp:Literal ID="lblErrorMsg" runat="server"></asp:Literal></asp:Panel>
                    </center>
                    <table>
                        <tr>
                            <td align="right">
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblEmailID" runat="server" Text="* Email ID"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtUserID" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtUserID_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtUserID" WatermarkCssClass="watermarked" WatermarkText="Type Email ID Here" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblPassword" runat="server" Text="* Password"></asp:Label>
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                                <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtPassword"
                                    StrengthIndicatorType="BarIndicator" PreferredPasswordLength="6" PrefixText=""
                                    HelpStatusLabelID="txtPassword_HelpLabel" TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    StrengthStyles="TextIndicator_txtPassword_Strength1;TextIndicator_txtPassword_Strength2;TextIndicator_txtPassword_Strength3;TextIndicator_txtPassword_Strength4;TextIndicator_txtPassword_Strength5"
                                    MinimumNumericCharacters="0" MinimumSymbolCharacters="0" BarBorderCssClass="txtLabelHint"
                                    BarIndicatorCssClass="txtLabelHint" Enabled="True" HelpHandleCssClass="txtLabelHint"
                                    HelpHandlePosition="LeftSide" TextCssClass="txtLabelHint" />
                            </td>
                            <td style="width: 33px">
                                <asp:Label ID="txtPassword_HelpLabel" runat="server" CssClass="txtLabelHint" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblConfirmPW0" runat="server" Text="* Confirm Password"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtConfirmPW" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                                <ajaxToolkit:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="txtConfirmPW"
                                    StrengthIndicatorType="BarIndicator" PreferredPasswordLength="6" PrefixText=""
                                    HelpStatusLabelID="txtConfirmPW_HelpLabel" TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                                    StrengthStyles="TextIndicator_txtConfirmPW_Strength1;TextIndicator_txtConfirmPW_Strength2;TextIndicator_txtConfirmPW_Strength3;TextIndicator_txtConfirmPW_Strength4;TextIndicator_txtConfirmPW_Strength5"
                                    MinimumNumericCharacters="0" MinimumSymbolCharacters="0" BarBorderCssClass="txtLabelHint"
                                    BarIndicatorCssClass="txtLabelHint" Enabled="True" HelpHandleCssClass="txtLabelHint"
                                    HelpHandlePosition="LeftSide" TextCssClass="txtLabelHint" />
                            </td>
                            <td style="width: 33px">
                                <asp:Label ID="txtConfirmPW_HelpLabel" runat="server" CssClass="txtLabelHint" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblName0" runat="server" Text="* Name"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtName" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtName_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtName" WatermarkCssClass="watermarked" WatermarkText="Type Name  Here" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblNIC0" runat="server" Text="* NIC #"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtNIC" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtNIC_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtNIC" WatermarkCssClass="watermarked" WatermarkText="Type 13 Digit NIC #  Here" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                <asp:Label ID="lblDOB0" runat="server" Text="Date of Birth"></asp:Label>
                            </td>
                            <td style="height: 13px; width: 151px;">
                                <asp:TextBox ID="txtDOB" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtDOB_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtDOB" WatermarkCssClass="watermarked" WatermarkText="Type in (DD/MM/YYYY)" />
                            </td>
                            <td style="width: 33px; height: 13px;">
                                <asp:ImageButton ID="Image1" runat="Server" AlternateText="Click to show calendar"
                                    ImageUrl="~/Images/Button/Calendar_scheduleHS.bmp" />
                                <ajaxToolkit:CalendarExtender ID="calendarButtonExtender" runat="server" PopupButtonID="Image1"
                                    TargetControlID="txtDOB" CssClass="MyCalendar " Format="MM/dd/yyyy" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                &nbsp;</td>
                            <td style="height: 13px; width: 151px;">
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                                    DataSourceID="SqlDataSource1" DataTextField="COUNTRY_NAME" 
                                    DataValueField="COUNTRY_ID" AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
                                    SelectCommand="SELECT [COUNTRY_ID], [COUNTRY_NAME] FROM [COUNTRY]">
                                </asp:SqlDataSource>
                            </td>
                            <td style="width: 33px; height: 13px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                &nbsp;</td>
                            <td style="height: 13px; width: 151px;">
                                <asp:DropDownList ID="DropDownList2" runat="server" 
                                    DataSourceID="SqlDataSource2" DataTextField="CITY_NAME" 
                                    DataValueField="CITY_ID">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
                                    SelectCommand="SELECT [CITY_ID], [CITY_NAME] FROM [CITY] WHERE ([COUNTRY_ID] = @COUNTRY_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" 
                                            Name="COUNTRY_ID" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td style="width: 33px; height: 13px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                &nbsp;</td>
                            <td style="height: 13px; width: 151px;">
                                <asp:TextBox ID="txtAddress" runat="server" Width="175px"></asp:TextBox>
                            </td>
                            <td style="width: 33px; height: 13px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                <asp:Label ID="lblNIC1" runat="server" Text="* Password Hint"></asp:Label>
                            </td>
                            <td style="height: 13px; width: 151px;">
                                <asp:TextBox ID="txtHint" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtHint_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtHint" WatermarkCssClass="watermarked" WatermarkText="Type Hint  Here" />
                            </td>
                          
                        </tr>
                       
                        <tr>
                            <td align="right" style="height: 13px">
                                <asp:Label ID="lblNIC2" runat="server" Text="* Call-in PIN"></asp:Label>
                            </td>
                            <td style="height: 13px; width: 151px;">
                                <asp:TextBox ID="txtPIN" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtPIN_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtPIN" WatermarkCssClass="watermarked" WatermarkText="Type 4  Digit PIN #  Here" />
                            </td>
                        
                        </tr>
                   
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label24" runat="server" Text="* Type the Code mentioned below" Width="190px"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtToVerify" runat="server" Width="155px" />
                                <ajaxToolkit:TextBoxWatermarkExtender ID="txtToVerify_TextBoxWatermarkExtender" runat="server"
                                    TargetControlID="txtToVerify" WatermarkCssClass="watermarked" WatermarkText="Type Code  Here" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/CrystalReport/Refresh.gif" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:Image ID="imgToVerify" runat="server" Height="70px" Width="154px" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top">
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="pageslinkstext">Terms 
                                                &amp; Conditions Detail&#39;s</asp:LinkButton>
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label25" runat="server" Font-Underline="False" Text="Terms &amp; Conditions"
                                    Width="149px"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:CheckBox ID="ChkAccept" runat="server" Text="Accept" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:RadioButton ID="rdoSubYes" runat="server" Checked="True" GroupName="rgpSubscription"
                                    Text="Yes" />
                                <asp:RadioButton ID="rdoSubNo" runat="server" GroupName="rgpSubscription" Text="No" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                &nbsp;
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            </td>
                            <td style="width: 151px">
                                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:Label ID="lblMessage" runat="server" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                            </td>
                        </tr>
                        </table>
                </td>
                <td align="right" valign="top">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

