<!---@ Description: Support for buttonGroup --->
<!---@ Note: If data toggle is true, then this tag supports selectItem, and selectItems --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonGroup."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	thisTag.qryOption 				= QueryNew("disabled,display,group,id,look,value,selected,tooltip");

	param attributes.id				= "";
	param attributes.isSafeHTML		= false;
	param attributes.justified		= false;
	param attributes.look			= ""; // this is the default unless over ridden 
	param attributes.name			= "";
	param attributes.orientation 		= "horizontal"; // horizontal, vertical, up
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.pull 			= "";
	param attributes.rendered		= true;
	param attributes.size			= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.toggle			= false;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";



	if (!attributes.processed) exit "exitTag";
	break;

case "end" :

	if(attributes.orientation == "horizontal")	variables.result &= '<div class="btn-group';
	if(attributes.orientation == "vertical")	variables.result &= '<div class="btn-group-vertical';
	if(attributes.orientation == "up")			variables.result &= '<div class="btn-group dropup';
	

	if(attributes.size		!= "")	variables.result &= ' btn-group-#encodeForHTMLAttribute(attributes.size)#';
	if(attributes.justified)			variables.result &= ' btn-group-justified';
	if(attributes.pull		!= "")	variables.result &= ' pull-#encodeForHTMLAttribute(attributes.pull)#';
								variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.tooltip	!= "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.toggle)			variables.result &= ' data-toggle="buttons"';
								variables.result &= ' role="group">';


	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{							

		variables.mylook = thisTag.qryOption.look[variables.myRow] == "" ? attributes.look : thisTag.qryOption.look[variables.myRow];		

		if(thisTag.qryOption.id[variables.myRow] == "auto")	QuerySetCell(thisTag.qryOption, "id", "auto_" & left(createUUID(), 10), variables.myRow);
			
													variables.result &= '<label class="btn btn-#encodeForHTMLAttribute(variables.myLook.lcase())# ';
		
		if(thisTag.qryOption.selected[variables.myRow])		variables.result &= ' active';
													variables.result &= '"';
	
		if(thisTag.qryOption.tooltip[variables.myRow] != "")	variables.result &= ' title="#encodeForHTML(thisTag.qryOption.tooltip[variables.myRow])#"';
													variables.result &= '>';



													variables.result &= '<input type="radio"';
		if(attributes.name					 != "")		variables.result &= ' name="#encodeForHTML(attributes.name)#"';
		if(thisTag.qryOption.id[variables.myRow] != "")		variables.result &= ' id="#encodeForHTML(thisTag.qryOption.id[variables.myRow])#"';
		if(thisTag.qryOption.selected[variables.myRow])
													variables.result &= ' checked="checked"';
													variables.result &= ' value="#encodeForHTML(thisTag.qryOption.value[variables.myRow])#"';	
													variables.result &= ' />';
		
													variables.result &= thisTag.qryOption.display[variables.myRow]; // pass through of content
													variables.result &= '</label>';
												
													variables.result &= variables.crlf & '</label><!-- /.radio -->';

		} // end for
								
		
	if(!attributes.isSafeHTML)					variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)					variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


								variables.result &= '</div><!-- /.btn-group -->';
								variables.result &= variables.crlf;


	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}
</cfscript>