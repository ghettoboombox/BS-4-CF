
<cfimport prefix="b" taglib="bootstrap">

<cfparam name="url.view" default="home">
<cfparam name="url.bootswatch" default="default">



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	

<cfinclude template="layouts/head.cfm">


<body>


<b:container>


<cfinclude template="layouts/menu.cfm">



<cfinclude template="views/#url.view#.cfm">

   
   
<cfinclude template="layouts/footer.cfm">
      
      
</b:container>
 
 
</body>
</html>     
      