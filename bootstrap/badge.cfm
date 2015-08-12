<!---@ Description: Support for badge --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:badge."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
  	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.severity 	= "warning";
	param attributes.value		= "";
	
	
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.text = xmlformat(evaluate("caller.rc.#attributes.binding#"));
          
     
								variables.result &= '<span class="badge badge-#attributes.severity#">';
								variables.result &= attributes.value; // pass through of content
								variables.result &= '</span>';
								
	
	thisTag.GeneratedContent = ""; // This tag does not have pass through
	
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>