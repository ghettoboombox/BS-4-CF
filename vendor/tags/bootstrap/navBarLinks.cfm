<!---@ Description: Support for navbarLinks, NavLink is expected to be inside --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navbarLinks."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.processed 		= true;
	param attributes.rendered 		= true;

	
	
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;

case "end" :

	if (attributes?.pills == true)		variables.result &= '<ul class="nav nav-pills';
	else								variables.result &= '<ul class="nav navbar-nav';
									
	if (attributes?.pull 	!= "")		variables.result &= ' navbar-#encodeForHTMLAttribute(attributes.pull)#';
	if (attributes?.stacked	== true)		variables.result &= ' nav-stacked';	
									variables.result &= '"';
									
									variables.result &= application.filterAttributes(attributes);
		
									variables.result &= '>';
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	
								

									variables.result &= variables.crlf & '</ul><!-- /.nav -->';
								
								
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);							

									thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>