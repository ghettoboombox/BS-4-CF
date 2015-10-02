<!---@ Description: Support for container --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:container."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.fluid			= false;
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("container"); // Content holds a lot of data. Consider cleaning the inner data instead
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	
        
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	if(attributes.fluid)				variables.result &= '<div class="container-fluid';
	if(!attributes.fluid)				variables.result &= '<div class="container';
	if(attributes.styleClass	!= "")		variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';			
	   								variables.result &= '"';
	if(attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")		variables.result &= ' style="#encodeForCSS(attributes.style)#"';                     
	if(attributes.tooltip    != "")   		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"'; 
									variables.result &= '>';
	

	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

					
								
									variables.result &= '</div><!-- /.container -->';
									variables.result &= variables.crlf;
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>