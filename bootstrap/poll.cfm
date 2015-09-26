<!---@ Description: Support for poll --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:poll."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	variables.defaultTimeframe = 5000; // in milliseconds
  
	param attributes.action;			// required
	param attributes.id				= "auto";
	param attributes.isSafeHTML		= false;				// make sure to set to true if you want animated loading 
	param attributes.interval		= variables.defaultTimeframe;		// ms
     param attributes.processed		= true;
     param attributes.rendered 		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.timeout			= variables.defaultTimeframe;		// ms
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
     
     if (attributes.id == "auto")	attributes.id = "poll_" & left(createUUID(), 10);
     
     if (!isnumeric(attributes.interval)) 	attributes.interval = variables.defaultTimeframe;
     if (!isnumeric(attributes.timeout)) 	attributes.timeout = variables.defaultTimeframe;
     

     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
	
								variables.result &= variables.crlf;
	if(attributes.styleClass == "")	variables.result &= '<span';
	if(attributes.styleClass != "")	variables.result &= '<span class="#encodeForHTMLAttribute(attributes.styleClass)#"';							
				
		   							
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
	
	             
								variables.result &= '>';
							
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim()); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean	
								
	
								variables.result &= '</span>';
								variables.result &= variables.crlf;
								
	// Now do Javascript			
								variables.result &= variables.crlf & '<script type="text/javascript">';
								variables.result &= variables.crlf & '(function poll() {';						
								variables.result &= variables.crlf & '$.ajax({';
								variables.result &= variables.crlf & 'url : "' & attributes.action & '",';
								variables.result &= variables.crlf & 'type : "GET",';
								variables.result &= variables.crlf & 'success : function(data) {';
	//							variables.result &= variables.crlf & 'console.log("Polling");';
								variables.result &= variables.crlf & '$("##' & attributes.id & '").html(data);';
								variables.result &= variables.crlf & '},';
	//							variables.result &= variables.crlf & 'error : function(data) {';
	//							variables.result &= variables.crlf & 'console.log("Error");';
	//							variables.result &= variables.crlf & '},';
								variables.result &= variables.crlf & 'dataType : "html",';
								variables.result &= variables.crlf & 'complete : setTimeout(function() { poll()},' & attributes.interval & '),';
								variables.result &= variables.crlf & 'timeout  : ' & attributes.timeout;
								variables.result &= variables.crlf & '})';
								variables.result &= variables.crlf & '})();';
								
     
								variables.result &= variables.crlf & '</script>';
								
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>