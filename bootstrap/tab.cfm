<!---@ Description: Support for tab --->


<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tab."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	thisTag.Parent = GetBaseTagData( "cf_tabView" );

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	variables.parentTag = lcase(ListGetAt(getBaseTagList(), 2));
	variables.validTag = ["cf_tabview"];
	
	if(!ArrayContains(variables.validTag, variables.parentTag ) )	{
		throw "This tag must be in #ArrayToList(variables.validTag)#. It appears to be #variables.parentTag#";
		}
  
	param attributes.disabled	= false;
	param attributes.id;					// Tab must have id
	param attributes.processed	= true;
	param attributes.rendered	= true;
	param attributes.role 		= "tab";
	param attributes.style		= "";
     param attributes.title		= "";
	if (!structKeyExists(attributes, "data-url")) attributes["data-url"]	= "";
	
	
	if (attributes.id.REFindNoCase('[^0-9A-Za-z ]')) 				throw "Special characters are not allowed";
	if (attributes.id.len() > application.Bootstrap.Limit.ID)		throw "id field is too long";
	
     
     if (!attributes.processed) exit "exitTag";
	if (!attributes.rendered) exit "exitTag";	// this is a known bug
	break;
     
case "end" :
     
	variables.Data = {
		disabled	= attributes.disabled,
		id		= attributes.id,
		role		= attributes.Role,
		style	= attributes.style,
		title	= attributes.title,
		dataUrl	= attributes["data-url"],
		generatedContent = thisTag.generatedContent
		};
     
     ArrayAppend(thisTag.Parent.thisTag.arTab, 			variables.Data);

	
		
	thisTag.generatedContent = "";
	break;
	}
     
 
</cfscript>