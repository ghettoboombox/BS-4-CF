


component	{
	
this.name="bs-4-cf-19";
this.applicationManagement = true;
this.sessionManagement = true;


function onApplicationStart()	{
	application.Bootstrap = {
	
		actionRoot 			= cgi.script_name,
		validLook			= ["", "default", "primary", "success", "info", "warning", "danger"], // There does not guarantee they are valid	
		limit				= {"id" 	 = 256, "styleClass" = 256 },
		iconLibrary			= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-"},
		imageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},	
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},	
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"}	
		};
	
		
	} // end onApplicationStart

	
function onRequestStart()	{
	
	param session.theme = "default";
	

	if(structkeyExists(url, "theme"))	{
		
		session.theme = url.theme;
		}
	}	// end onRequestStart

}

