
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Label &amp; Badge Examples</b:h1>
		<p>&lt;b:badge&gt; and &lt;b:label&gt;</p>
	</b:column>	
</b:row>






<b:h1 key="introduction" />


<b:panel look="info" title="Attributes of <b:badge> & <b:label>">

	<b:table>
	<thead>
		<tr>
			<b:th key="panel_attribute" />
			<th>Default value</th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>generatedContent</td>
			<td>(none)</td>
			<b:td key="common" />
			<td>Yes</td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Finds data in <code>rc.*</code> scope</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>

		
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>key</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>look</td>
			<b:td text="nowrap">warning for b:badge<br />
				default for b:label</b:td>
			<td>This is forces to lower case. ColdFusion is case insensitive and this allows that pattern to continue</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>placeholder</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>text</td>
			<td>Required to not exist</td>
			<td>BootsFaces has this wrong. b:banner and b:label are very similar and should both be powered by value. One of the reasons why this is wrong, is <code>text=</code> is used for context colors. See helpers for more details </td>
			<td>N/A</td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>The content of what should be shown. If value is blank, this will still be rendered. This can be useful for Javascript to dynamically updating content.</td>
			<td><code>getSafeHTML()</code></td>
		</tr>


	</tbody>
	</b:table>
</b:panel>





<b:h1 key="examples" />

<!--- Lets load up a query --->
<cfscript>
rc.qryData = QueryNew("Look, Badge, Look2, Badge2");


rc.qryData.AddRow([
	{Look = "default", 	Badge = 1,  Look2 = "success", badge2 = 7 },
	{Look = "info", 	Badge = 15, Look2 = "primary", badge2 = 4 },
	{Look = "warning", 	Badge = 7,  Look2 = "danger",  badge2 = 3 }
	]
	); 
</cfscript>





<b:well>
	<b:table>
	<tbody>
		<cfoutput query="rc.qryData">
			<tr>
				<td><b:label value="#look#" look="#look#" /></td>
				<td><b:badge value="#badge#" /></td>
				<td><b:label value="#look2#" look="#look2#" /></td>
				<td><b:badge value="#badge2#" /></td>
			</tr>
		</cfoutput>	
	</tbody>
	</b:table>
</b:well>


<h3>Inside of headers</h3>
<p>This also uses isSafeHTML and key attributes. Content may vary depending on your current language settings</p>


<b:h1 isSafeHTML="true">Example heading <b:label key="New_page" /></b:h1>
<b:h2 isSafeHTML="true">Example heading <b:label key="New_page" /></b:h2>
<b:h3 isSafeHTML="true">Example heading <b:label key="New_page" /></b:h3>
<b:h4 isSafeHTML="true">Example heading <b:label key="New_page" /></b:h4>
<b:h5 isSafeHTML="true">Example heading <b:label key="New_page" /></b:h5>
<b:h6 isSafeHTML="true">Example heading <b:label key="New_page" /></b:h6>




<h3>Inside of headers</h3>
<p>Using plain header tags and static values. This does not vary by language</p>

<b:well>

<h1>Example heading <b:label value="New Page" /></h1>
<h2>Example heading <b:label value="New Page" /></h2>
<h3>Example heading <b:label value="New Page" /></h3>
<h4>Example heading <b:label value="New Page" /></h4>
<h5>Example heading <b:label value="New Page" /></h5>
<h6>Example heading <b:label value="New Page" /></h6>

</b:well>