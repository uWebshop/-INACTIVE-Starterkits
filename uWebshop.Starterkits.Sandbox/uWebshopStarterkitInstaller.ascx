<%@ Control Language="C#" AutoEventWireup="true" Inherits="uWebshop.Starterkits.Sandbox.uWebshopStarterkitInstaller" %>
<%@ Register TagPrefix="umb" Namespace="umbraco.uicontrols" Assembly="controls" %>
<link href="/umbraco_client/propertypane/style.css" rel="stylesheet" />

<div class="dashboardWrapper">
	<h2>Thank you for trying out the uWebshop 2 Sandbox Starterkit!</h2>
	<img src="/App_Plugins/uWebshop/images/uwebshop32x32.png" alt="uWebshop" class="dashboardIcon" />
	<p>There are <a href="#start">some steps</a> left to finish before this installation is complete.</p>
	<p>If you need any help please visit our <a target="_blank" href="http://docs.uWebshop.com">documentation</a> or <a href="http://support.uwebshop.com" title="uWebshop Support">support site</a></p>>
</div>

</div></div>


<umb:Pane ID="panel2" runat="server" visible="false">
	<div class="dashboardWrapper">
		<h2>Create a store</h2>
		<img src="/App_Plugins/uWebshop/images/store32x32.png" alt="Create an uWebshop Store!" class="dashboardIcon" />
		<p>This will create a store in uWebshop. You need at least one store, but you can create and remove as many stores as you like.</p>
		<p>The installed Store does need some extra values before it can be used. You can enter these details at the Store node itself.</p>  
		<asp:Label ID="Label1" runat="server" AssociatedControlID="txtStoreAlias" Text="Name of the store:"></asp:Label>
		<asp:TextBox runat="server" ID="txtStoreAlias"/>
		<asp:Button runat="server" ID="btnInstallStore" OnClick="BtnInstallStoreClick" Text="Create Store"/>
	</div>
</umb:Pane>

<umb:Pane ID="panel5" runat="server" visible="true">
	<div class="dashboardWrapper">
		<h2>What's next?</h2>
		<img src="/App_Plugins/uWebshop/images/documentation32x32.png" alt="Work to do!" class="dashboardIcon" />
		<div class="dashboardColWrapper">
			<div class="dashboardCols">
				<div class="dashboardCol">
					<ul>
						<li>You can find the post installation/getting started guide on our support platform. <a target="_blank" href="http://docs.uWebshop.com">Read the post-installation documentation</a></li>              
						<li>Create templates to display categories and products and connect them to the uwbsCategory &amp; uwbsProduct document types. <a target="_blank" href="http://docs.uWebshop.coms">Read about uWebshop templating</a></li>
						<li>The default uWebshop URLrewriting uses a node "store" to render the uWebshop catalog to your site. Create this node. <a target="_blank" href="http://docs.uWebshop.com">Read about uWebshop url rewriting</a></li>
						<li>The installer added a new macro <em>"BasketHandler"</em> to handle all the order updates. This macro should be placed on the template or the node you want to use for basket update (we advise to use the Master Document Template)  <a target="_blank" href="http://docs.uWebshop.com">read about the uWebshop basket handler</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</umb:Pane>