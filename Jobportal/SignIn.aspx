<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table border="0" cellspacing="0" cellpadding="0" style="width: 738px;">
        <tr>
            <td style="width: 520px;" align="left" valign="top">
                <div class="demoarea">
                    <div class="demoheading">
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                    </div>
                    <ajaxToolkit:Accordion ID="MyAccordion" runat="server" AutoSize="Fill" ContentCssClass="tableWindow"
                        FadeTransitions="false" FramesPerSecond="40" HeaderCssClass="tdHeaderPane" HeaderSelectedCssClass="btnTabButtonSelected"
                        RequireOpenedPane="false" SelectedIndex="0" SuppressHeaderPostbacks="true" TransitionDuration="250">
                        <Panes>
                            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                                <Header>
                                    <a class="pagessubtextcolor" href="">Guidelines</a></Header>
                                <Content>
                                    <ol style="text-align: justify">
                                        New/Un-Registered Suppliers
                                    </ol>
                                    <ul style="text-align: justify">
                                        1. Download Supplier Registration Form (SRF).
                                    </ul>
                                    <ul style="text-align: justify">
                                        2. Read the instructions/guidelines.
                                    </ul>
                                    <ul style="text-align: justify">
                                        3. Fill-in all columns. Columns that are not relevant may be marked “NA” (not applicable).
                                    </ul>
                                    <ul style="text-align: justify">
                                        4. Attach all supporting documents with the SRF.
                                    </ul>
                                    <ul style="text-align: justify">
                                        5. Opt for one of the following options for Security Deposit.
                                    </ul>
                                    <ol style="text-align: justify">
                                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="pageslinkstext" Font-Underline="True"
                                            NavigateUrl="~/Document/TERMS & CONDITIONS AND GUIDE LINES FOR REGISTRATION.pdf"
                                            Target="_blank" Text="Read More" Width="120px"></asp:HyperLink>
                                    </ol>
                                    <ul style="text-align: justify">
                                        &nbsp;
                                    </ul>
                                </Content>
                            </ajaxToolkit:AccordionPane>
                            <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server">
                                <Header>
                                    <a class="pagessubtextcolor" href="">Purchase Condition Local</a></Header>
                                <Content>
                                    <ul style="text-align: justify">
                                        1. Advance Payment: To secure advance payment for delivery of goods/services, Supplier
                                        is requested to submit a pre-receipted bill (an invoice) of an amount equal to the
                                        desired advance along with the GST (where applicable), and an unconditional Bank
                                        Guarantee at least 15 days before the contract execution date, or immediately if
                                        the time available till execution date is less than 15 days.
                                    </ul>
                                    <ul style="text-align: justify">
                                        2. Acceptance of Goods/Services: SUPARCO shall accept goods/services if those qualify
                                        ATP (Acceptance Test Procedures/Parameters). If goods are rejected, Supplier is
                                        required to collect those from the delivery site at his/her cost and risk.
                                    </ul>
                                    <ol style="text-align: justify">
                                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="pageslinkstext" Font-Underline="True"
                                            NavigateUrl="~/Document/General Conditions of Local.pdf" Target="_blank" Text="Read More"
                                            Width="120px"></asp:HyperLink>
                                    </ol>
                                </Content>
                            </ajaxToolkit:AccordionPane>
                            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                                <Header>
                                    <a class="pagessubtextcolor" href="">Purchase Condition Foreign</a></Header>
                                <Content>
                                    <ol style="text-align: justify">
                                        The following terms and conditions are applicable in all sort of Foreign Contract.
                                        However, the special conditions provided specifically with the contract will supersede
                                        the following applicable general conditions.
                                    </ol>
                                    <ul style="text-align: justify">
                                        Advance Payment: To secure advance payment for delivery/shipment of goods/services,
                                        Supplier is requested to submit an invoice of an amount equal to the desired advance
                                        and an unconditional Bank Guarantee must be submitted by the SELLER to SUPARCO along
                                        with the acceptance of the contract. No any payments will be released until the
                                        Bank Guarantees will be counter verified from the issuance bank as well the copy
                                        of contract will be received duly accepted.
                                    </ul>
                                    <ol style="text-align: justify">
                                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="pageslinkstext" Font-Underline="True"
                                            NavigateUrl="~/Document/General Conditions ofl Foreign.pdf" Target="_blank" Text="Read More"
                                            Width="120px"></asp:HyperLink>
                                    </ol>
                                </Content>
                            </ajaxToolkit:AccordionPane>
                            <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                                <Header>
                                    <a class="pagessubtextcolor" href="">Contact Us</a></Header>
                                <Content>
                                    <ol style="text-align: justify">
                                        aa
                                    </ol>
                                    <ul style="text-align: justify">
                                        aa
                                    </ul>
                                    <ul style="text-align: justify">
                                        a
                                    </ul>
                                    <ul style="text-align: justify">
                                    </ul>
                                    <ul style="text-align: justify">
                                    </ul>
                                </Content>
                            </ajaxToolkit:AccordionPane>
                        </Panes>
                    </ajaxToolkit:Accordion>
                </div>
                <ol style="text-align: justify">
                    &nbsp;
                    <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server" />
                </ol>
            </td>
            <td align="right" valign="top" class="tableWindow">
                <table border="0" cellspacing="0" cellpadding="0" style="width: 176px" class="tableWindow">
                    <tr>
                        <td align="left">
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Panel ID="pnlinfo" runat="server" Height="30px" SkinID="MessageWindow">
                                <br />
                                <asp:Literal ID="lblMessage" runat="server" Visible="False"></asp:Literal></asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label2" runat="server" Text="Login ID:" Width="116px"></asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:TextBox ID="txtUserID" runat="server" AccessKey="U" MaxLength="100" TabIndex="1"
                                Width="173px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label23" runat="server" Text="(e.g. myemail@yahoo.com)" Width="194px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:TextBox ID="txtPassword" runat="server" AccessKey="P" MaxLength="20" TabIndex="2"
                                TextMode="Password" Width="173px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Button ID="btnSubmit" runat="server" AccessKey="S" TabIndex="3" Text="Sign In"
                                OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="pageslinkstext" Enabled="False"
                                Visible="False">Forget password? </asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script src="../Scripts/formcheck.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">

        //checking data entered by Anticipated Member
        function ValidateEntry() {
            //for Member's Email ID-------------------------------------------
            if (document.getElementById("ctl00_phMain_txtUserID").value == "") {
                alert("Please Enter User Name..");
                document.getElementById("ctl00_phMain_txtUserID").focus();
                return false
            }
            else if (document.getElementById("ctl00_phMain_txtUserID").value != "") {
                bool = isEmail(document.getElementById("ctl00_phMain_txtUserID").value);
                if (bool == false) {
                    alert("Enter Valid Email like yourid@yahoo.com");
                    document.getElementById("ctl00_phMain_txtUserID").focus();
                    return false
                }
            }
            //for Member's Password-------------------------------------------
            if (document.getElementById("ctl00_phMain_txtPassword").value == "") {
                alert("Please Enter Password...");
                document.getElementById("ctl00_phMain_txtPassword").focus();
                return false
            }

            //checking lenght of Password
            else if (document.getElementById("ctl00_phMain_txtPassword").value.length < 6) {
                alert("Password cannot be less than 06 digits");
                document.getElementById("ctl00_phMain_txtPassword").focus();
                return false
            }
            else if (document.getElementById("ctl00_phMain_txtPassword").value.length > 30) {
                alert("Password cannot be more than 30 digits");
                document.getElementById("ctl00_phMain_txtPassword").focus();
                return false
            }
            return true
        }
        function Change_Item(kcode) {
            if (kcode == 13) {
                document.getElementById("ctl00_phMain_btnSubmit").focus();
            }
        }

    </script>
</asp:Content>
