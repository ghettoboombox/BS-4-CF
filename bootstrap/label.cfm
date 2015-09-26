<!---@ Description: Support for label --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:label."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= false;
	param attributes.look 			= "default";
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	param attributes.value			= "";
	
	
	if (attributes.keyExists("text")) 						throw "attributes.text is an invalid option. Don't even think of using it";
     
     
     if (!attributes.processed) exit "exitTag";
     break;
     
case "end" :     
     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.text = evaluate("caller.rc.#attributes.binding#");
     
	
	   							variables.result &= '<span class="label label-#encodeForHTMLAttribute(attributes.look.lcase())#"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.tooltip    != "")    variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
 	
								variables.result &= '>';
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim()); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

								variables.result &= '</span>';
   

	thisTag.GeneratedContent = ""; // This tag does not have pass through
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>