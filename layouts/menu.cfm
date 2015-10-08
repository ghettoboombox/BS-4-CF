<cfimport prefix="b" taglib="../views/_bootstrap">



<b:navBar brand="Bootstrap for ColdFusion" fixed="top">
	<b:navbarLinks>
	
		<b:dropMenu value="Getting Started">
			<b:navLink key="Introduction" href="~/docs/getting_started" active="#IIF(getItem() EQ 'getting_started', 1, 0)#" />
			<b:navLink value="Smart tags & common features" href="~/common" />
			<b:navLink value="Head, JS, & CSS tags" href="~/docs/head" />
			<b:navLink />
			<b:navLink header="Bootstrap 4"/>
			<b:navLink value="Alpha Release" href="~/docs/theme?theme=4alpha" />	
		</b:dropMenu>
	
		
		<b:dropMenu value="CSS" active="#ArrayContains(['grid','typography','tables','forms','select','awesomecheckbox','buttons','helper'], getItem())#">
			<b:navLink value="Grid system" href="~/docs/grid" icon="th-large" />
		    	<b:navLink value="Typography" href="~/docs/typography" />
			<b:navLink value="Tables" href="~/docs/tables" icon="th" />
			<b:navLink value="Forms" href="~/docs/forms" />
			<b:navLink value="Select, Checkbox, Radio" href="~/docs/select" />
			<b:navLink value="Awesome Bootstrap Checkboxes" href="~/docs/awesomecheckbox" />
			<b:navLink value="Buttons & Links" href="~/docs/buttons" />
			<b:navLink value="Helper classes" href="~/docs/helper" />
		</b:dropMenu>
		
		<b:dropMenu value="Components" active="#ArrayContains(['icons','dropdowns','buttonGroups','nav','label','jumbotron','thumbnail','alert','progress','panel','include'], getItem())#">
			<b:navLink value="Icons" href="~/docs/icons" icon="picture" />
		    	<b:navLink value="Dropdowns" href="~/docs/dropdowns" />
			<b:navLink value="Button groups" href="~/docs/buttonGroups" />
			<b:navLink value="Navs" href="~/docs/nav" />
			<b:navLink value="Labels & Badges" href="~/docs/label" />
			<b:navLink value="Jumbotron" href="~/docs/jumbotron" />
			<b:navLink value="Images" href="~/docs/image" icon="picture" />
			<b:navLink value="Alerts" href="~/docs/alert" icon="list-alt" />
			<b:navLink value="Progress Bars" href="~/docs/progress" icon= "tasks" />
			<b:navLink value="Panels & Wells" href="~/docs/panel" />
			<b:navLink value="Include" href="~/docs/include" />
		</b:dropMenu>
	
		<b:dropMenu value="JavaScript" active="#ArrayContains(['modal','tab','poll'], getItem())#">
		    	<b:navLink value="Modal"	href="~/docs/modal" icon="modal-window" />
		    	<b:navLink value="Tab"	href="~/docs/tab" icon="folder-close" />
		    	<b:navLink value="Poll"	href="~/docs/poll" icon="refresh" />
		</b:dropMenu>
	

     	
		<b:dropMenu value="Themes" active="#IIF(getItem() EQ 'theme', 1, 0)#">
          	<b:navLink value="Default" href="~/theme/default" />
			<b:navLink />
			<b:navLink header="By Bootswatch"/>
			<cfloop index="rc.i" list="Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<b:navLink href="~/theme/#rc.i#" binding="i" disabled="#IIF(session.themeX EQ rc.i , 1, 0)#" />
			</cfloop>		
		</b:dropMenu>
		
		
		<b:dropMenu value="Current Language : #session.lang#" active="#ArrayContains(['lang'], getSection())#">
		    	<b:navLink value="en_US"	href="?lang=en_US" />
		    	<b:navLink value="es_ES"	href="?lang=es_ES" />
		    	<b:navLink value="it_IT"	href="?lang=it_IT" />
		    	<b:navLink value="pt_BR"	href="?lang=pt_BR" />
		</b:dropMenu>
		
	</b:navbarLinks>
</b:navBar>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>