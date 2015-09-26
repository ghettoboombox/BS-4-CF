<!---@ Description: Support for well --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:well."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id				= "";
	param attributes.isSafeHTML		= true;
	param attributes.processed	 	= true;
	param attributes.rendered 		= true;
	param attributes.size			= "";
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     							variables.result &= crlf;
	   							variables.result &= '<div class="well';
	if(attributes.size		!= "")	variables.result &= ' well-#attributes.size#';		
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';                 
	if(attributes.tooltip    != "")    variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
								variables.result &= '>';

								variables.result &= thisTag.GeneratedContent; // pass through of content

								variables.result &= '</div><!-- /.well -->';
								variables.result &= crlf;	
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>