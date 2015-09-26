<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->

<!--- See: https://github.com/flatlogic/awesome-bootstrap-checkbox --->


<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectBooleanCheckbox."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.circle		= false;		// make it look like a radio
	param attributes.checked		= false;
	param attributes.disabled	= false;
	param attributes.id			= "";
	param attributes.inline		= false;
	param attributes.look		= "";
	param attributes.name		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.tabIndex	= "";
	param attributes.title		= "";
	param attributes.tooltip		= "";
	
	if (attributes.id == "auto")	attributes.id = "checkbox_" & left(createUUID(), 10);
	
	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;
	
	
	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";
	
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
		
								variables.result &= '<div class="checkbox';
	if(attributes.circle)			variables.result &= ' checkbox-circle';						
	if(attributes.look    	!= "")    variables.result &= ' checkbox-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes.inline)			variables.result &= ' checkbox-inline';
	   							variables.result &= '"';

	if(attributes.tooltip    != "")    variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
								variables.result &= '>';
								
								
	
								variables.result &= '<input type="checkbox"';
	if(attributes.name		!= "")	variables.result &= ' name="#encodeForHTMLAttribute(attributes.name)#"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.checked)			variables.result &= ' checked="checked"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';
	if(attributes.tabindex	!= "")	variables.result &= ' tabindex="#encodeForHTMLAttribute(attributes.tabindex)#"';
	
								variables.result &= ' />';
								variables.result &= '<label';
	if(attributes.id		!= "")	variables.result &=	' for="#encodeForHTMLAttribute(attributes.id)#"';
								variables.result &= '>';

	
								variables.result &= getSafeHTML(thisTag.GeneratedContent); // pass through of content
								variables.result &= '</label>';
								
								variables.result &= variables.crlf &  '</div>';
     

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>