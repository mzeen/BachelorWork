<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SIGNUPVALIDATION_EMAIL.aspx.cs" Inherits="SIGNUP" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
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
                            </td>
                            <td style="width: 33px">
                                &nbsp;<asp:RegularExpressionValidator 
                                    runat="server" ID="NReq9" ControlToValidate="txtUserID"
                                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    
                                    ErrorMessage="<b>Required Format Missing</b><br />Invalid E-MAIL ID must be valid like myid@yahoo.com " 
                                    Display="None" />
                                 <asp:ValidatorCalloutExtender ID="NReq9_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq9">
                                </asp:ValidatorCalloutExtender>
                                 &nbsp;<asp:RequiredFieldValidator runat="server" ID="Req1" ControlToValidate="txtUserID"
                                    
                                    
                                    ErrorMessage="<b>Required Field Missing</b><br />A valid E-MAIL ID is required." Display="None" 
                                    />
                                <asp:ValidatorCalloutExtender ID="Req1_ValidatorCalloutExtender" runat="server" 
                                    Enabled="True" TargetControlID="Req1">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblPassword" runat="server" Text="* Password"></asp:Label>
                                &nbsp;
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                                <asp:PasswordStrength ID="txtPassword_PasswordStrength" runat="server" 
                                    Enabled="True" MinimumLowerCaseCharacters="5" MinimumNumericCharacters="1" 
                                    TargetControlID="txtPassword">
                                </asp:PasswordStrength>
                            </td>
                            <td style="width: 33px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblConfirmPW0" runat="server" Text="* Confirm Password"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtConfirmPW" runat="server" TextMode="Password" Width="155px"></asp:TextBox>
                                <asp:TextBoxWatermarkExtender ID="txtConfirmPW_TextBoxWatermarkExtender" 
                                    runat="server" Enabled="True" TargetControlID="txtConfirmPW" 
                                    WatermarkText="Enter Password">
                                </asp:TextBoxWatermarkExtender>
                            </td>
                            <td style="width: 33px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblName0" runat="server" Text="* Name"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtName" runat="server" Width="155px" />
                                <asp:TextBoxWatermarkExtender ID="txtName_TextBoxWatermarkExtender" 
                                    runat="server" Enabled="True" TargetControlID="txtName" 
                                    WatermarkText="Enter Name">
                                </asp:TextBoxWatermarkExtender>
                            </td>
                            <td style="width: 33px">
                                 <asp:RequiredFieldValidator runat="server" ID="NReq4" ControlToValidate="txtName"
                                    Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Name is required." />
                                <asp:ValidatorCalloutExtender ID="NReq4_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq4">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblNIC0" runat="server" Text="* NIC #" CssClass="txtLabel"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtNIC" runat="server" Width="155px" />
                            </td>
                            <td style="width: 33px">
                                &nbsp;
                                 <asp:RequiredFieldValidator runat="server" ID="NReq5" ControlToValidate="txtNIC"
                                    Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Current 13 Digits NIC # is required." />
                                <asp:ValidatorCalloutExtender ID="NReq5_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq5">
                                </asp:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator runat="server" ID="NReq8" ControlToValidate="txtNIC"
                                    Display="None" ValidationExpression="\d{5}-\d{7}-\d{1}" ErrorMessage="<b>Required Format Missing</b><br />Invalid NIC # must be in (NNNNN-NNNNNNN-N)" />
                                <asp:ValidatorCalloutExtender ID="NReq8_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq8">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblDOB0" runat="server" Text="Date of Birth" CssClass="txtLabel"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="txtDOB" runat="server" Width="155px" />
                                <asp:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtDOB" Format="MM/dd/yyyy">
                                </asp:CalendarExtender>
                            </td>
                            <td class="style5">
                                <asp:RequiredFieldValidator runat="server" ID="NReq6" ControlToValidate="txtDOB"
                                    Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Date of Birth in (DD/MM/YYYY) is required." />
                                <asp:ValidatorCalloutExtender ID="NReq6_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq6">
                                </asp:ValidatorCalloutExtender>
                                <asp:RegularExpressionValidator runat="server" ID="NReq7" ControlToValidate="txtDOB"
                                    Display="None" ValidationExpression="\d{2}/\d{2}/\d{4}" ErrorMessage="<b>Required Format Missing</b><br />Invalid Date must be in (MM/DD/YYYY)" />
                                <asp:ValidatorCalloutExtender ID="NReq7_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq7">
                                </asp:ValidatorCalloutExtender>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                &nbsp;</td>
                            <td style="height: 13px; width: 151px;">
                               
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                                    DataSourceID="SqlDataSource1" DataTextField="COUNTRY_NAME" 
                                    DataValueField="COUNTRY_ID" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
                                    SelectCommand="SELECT [COUNTRY_ID], [COUNTRY_NAME] FROM [COUNTRY]">
                                </asp:SqlDataSource>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server" 
                                            DataSourceID="SqlDataSource2" DataTextField="CITY_NAME" 
                                            DataValueField="CITY_ID">
                                        </asp:DropDownList>
                                        <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                                            AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="1000">
                                            <ProgressTemplate>
                                                .....update in progress....
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged">
                                        </asp:AsyncPostBackTrigger>
                                    </Triggers>
                                </asp:UpdatePanel>
                            </td>
                            <td style="width: 33px; height: 13px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                &nbsp;</td>
                            <td style="height: 13px; width: 151px;">
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
                            <td align="right" class="style1">
                                </td>
                            <td class="style2">
                                <asp:TextBox ID="txtAddress" runat="server" Width="175px"></asp:TextBox>
                            </td>
                            <td class="style3">
                                </td>
                        </tr>
                        <tr>
                            <td align="right" style="height: 13px">
                                <asp:Label ID="lblNIC1" runat="server" Text="* Password Hint"></asp:Label>
                            </td>
                            <td style="height: 13px; width: 151px;">
                                <asp:TextBox ID="txtHint" runat="server" Width="155px" />
                                <asp:RequiredFieldValidator runat="server" ID="NReq13" ControlToValidate="txtHINT"
                                    Display="None" ErrorMessage="<b>Required Field Missing</b><br />A Password Hint is required." />
                                <asp:ValidatorCalloutExtender ID="NReq13_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq13">
                                </asp:ValidatorCalloutExtender>
                            </td>
                          
                        </tr>
                       
                        <tr>
                            <td align="right" style="height: 13px">
                                <asp:Label ID="lblNIC2" runat="server" Text="* Call-in PIN"></asp:Label>
                            </td>
                            <td style="height: 13px; width: 151px;">
                                <asp:TextBox ID="txtPIN" runat="server" Width="155px" />
                                  <asp:RequiredFieldValidator runat="server" ID="NReq14" ControlToValidate="txtPIN"
                                    Display="None" ErrorMessage="<b>Required Field Missing</b><br />A 4 Digit Pin # is required." />
                                  <asp:ValidatorCalloutExtender ID="NReq14_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq14">
                                </asp:ValidatorCalloutExtender>
                                  <asp:RegularExpressionValidator runat="server" ID="NReq15" ControlToValidate="txtPIN"
                                    Display="None" ValidationExpression="\d{4}" ErrorMessage="<b>Required Format Missing</b><br />Invalid Pin # must be in 4 Digit" />
                              
                                <asp:ValidatorCalloutExtender ID="NReq15_ValidatorCalloutExtender" 
                                    runat="server" Enabled="True" TargetControlID="NReq15">
                                </asp:ValidatorCalloutExtender>
                              
                            </td>
                        
                        </tr>
                   
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label24" runat="server" Text="* Type the Code mentioned below" Width="190px"></asp:Label>
                            </td>
                            <td style="width: 151px">
                                <asp:TextBox ID="txtToVerify" runat="server" Width="155px" />
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
                        <tr>
                            <td align="center" colspan="3">
		<asp:HyperLink id="lnkBanner" runat="server">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                &nbsp;</td>
                        </tr>
                        </table>
                </td>
                <td align="right" valign="top">
                    <table border="0" cellspacing="0" cellpadding="0" style="width: 176px">
                        <tr>
                            <td align="left">
                                
                                 &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</asp:Content>

