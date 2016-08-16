<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
		<div class="search">
			<form action="#">
				<img src="images/title.gif" alt="" width="90" height="30" />
				    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
			
			</form>
		
		</div>
        <div>
            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource2">
           <ItemTemplate>
           
               <marquee behavior="scroll" onmouseout="this.start()" onmouseover="this.stop()" 
                   scrollamount="5"   style="width: 695px; height: 17px">
               
                               <asp:HyperLink ID="HyperLink1" Text='<%# Eval("NEWS_TITLE") %>' runat="server"></asp:HyperLink>
                       
                   </marquee>

           </ItemTemplate>
            </asp:Repeater>
        </div>
		<div id="blocks">																																																																																																																													<div class="inner_copy"><a href="http://www.bestfreetemplates.org/">free templates</a><a href="http://www.bannermoz.com/">banner templates</a></div>
			<div class="block">
				<img src="images/title1.gif" alt="" width="214" height="29" /><br />
                         
                          
				&nbsp;</div>
			<div class="block">
				<img src="images/title2.gif" alt="" width="214" height="29" />
			
            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">
               
               <ItemTemplate>
                    <marquee direction="up" height="149" onMouseOut="this.start()" onMouseOver="this.stop()" scrollamount="2" >
                             
                               <asp:HyperLink ID="HyperLink1" Text='<%# Eval("NEWS_TITLE") %>' runat="server"></asp:HyperLink>
               
                   </marquee>
               </ItemTemplate>
             
             </asp:Repeater>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:INVENTORYSALESConnectionString %>" 
                        SelectCommand="SELECT * FROM [INDC_NEWS]"></asp:SqlDataSource>
                
				
                
                </div>
			<div class="block">
				<img src="images/title3.gif" alt="" width="214" height="29" /><br />
				<ul id="list">
					
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CategoryID" 
                            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
                            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                            GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:TemplateField SortExpression="CategoryName">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="NAME" runat="server" NavigateUrl="~/SEARCH.aspx" 
                                            Text='<%# Bind("CategoryName") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CategoryID" InsertVisible="False" 
                                    SortExpression="CategoryID" Visible="False">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryID") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="ID" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                            SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]">
                        </asp:SqlDataSource>
                    
                 
				</ul>
                <center>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/moreg.jpg" 
                    PostBackUrl="~/SEARCH.aspx" />
                    </center>
&nbsp;</div>
			<div class="block">
				<img src="images/title4.gif" alt="" width="214" height="29" /><br />
				<p class="gray_text">Maecenas hendrerit, massa ac laoreet iaculipede mnisl ullamcorper- massa, cosectetuer feipsum eget pede. Proin nunc. Donec nonummy, tellus er sodales enim, in tincidun- mauris in odio. 
					<a href="#" class="submit"><img src="images/submit.jpg" alt="" width="69" height="25" /></a>
				</form>
			</div>
		</div>
		<div id="info">
			<div>
				<img src="images/title5.gif" alt="" width="160" height="26" />
				<ul>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Massa ac laoreet iaculipede</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
				</ul>
			</div>
			<div>
				<img src="images/title6.gif" alt="" width="160" height="26" />
				<ul>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Massa ac laoreet iaculipede</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
				</ul>
			</div>
			<div>
				<img src="images/title7.gif" alt="" width="160" height="26" />
				<ul>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Massa ac laoreet iaculipede</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
				</ul>
			</div>
			<div>
				<img src="images/title8.gif" alt="" width="160" height="26" />
				<ul>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Massa ac laoreet iaculipede</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
					<li><a href="#">Maecenas hendrerit</a></li>
					<li><a href="#">Convallis nonummy tellus</a></li>
					<li><a href="#">In tincidunt mauris</a></li>
				</ul>
			</div>
		</div>
	</div>
</asp:Content>

