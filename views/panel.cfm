
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Panels &amp; Wells</b:h1>
		<p>b:panel &amp; b:well</p>
	</b:column>	
</b:row>


<b:blockquote>
	A card is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options.

	If you’re familiar with Bootstrap 3, cards replace our old panels, wells, and thumbnails. Similar functionality to those components is available as modifier classes for cards.


	<footer>Bootstrap 4 alpha documentation
</b:blockquote>



<b:h2>Introduction to Panels</b:h2>



<b:panel look="info" title="Attributes for <b:panel>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>generatedContent</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td><b:label look="danger">No</b:label> this is often more than the default value as set in antisamy. Make sure that the inner content is clean. Having said all that, it is preferable to use the &lt;b:td&gt; and &lt;b:th&gt; inside of this tag</td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
			<td><b:label look="danger">No</b:label> </td>
		</tr>
		<tr>
			<td>collapsed</td>
			<td>false</td>
			<td>Is it collapsed</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>collapsible</td>
			<td>false</td>
			<td>can it be collapsed</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>contentClass</td>
			<td>(none)</td>
			<td>CSS class for body</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>contentStyle</td>
			<td>(none)</td>
			<td>CSS style for body</td>
			<td><code>encodeForCSS()</code></td>
		</tr>
		
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>look</td>
			<td>default</td>
			<td>Look and feel of header and edge</td>
			<td>Must be on valid value</td>
		</tr>		
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>title</td>
			<td>(none)</td>
			<td>Heading for panel</td>
			<td><code>encodeForHTML()</code></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>titleClass</td>
			<td>(none)</td>
			<td>CSS class for title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>titleStyle</td>
			<td>(none)</td>
			<td>CSS style for title</td>
			<td><code>encodeForCSS()</code></td>
		</tr>

		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<p>All of the attributes listing are panels. No additional examples are needed</p>


<h2>Introduction to Wells</h2>

<p>Use the well as a simple effect on an element to give it an inset effect.</p>

<p>This is also the no prefix example. None of the ColdFusion custom tags have a prefix.</p>



<b:well>
    <b:h3>Well Header</b:h3>
    Well content.
</b:well>


<h5>Markup:</h5>

<pre>
&lt;well&gt;
    &lt;h3&gt;Well Header&lt;/h3&gt;
    Well content.
&lt;/well&gt;
</pre>

<p>&nbsp;</p>


<b:panel look="info" title="Attributes of <b:well>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>generatedContent</td>
			<td>(none)</td>
			<td>Pass through of content</td>
			<td><b:label look="danger">No</b:label>  this is often more than the default value as set in antisamy. Make sure that the inner content is clean</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h3>Examples</h3>


<b:row>
	<b:column span="4">
		<b:well size="sm">Look, I'm in a small well!</b:well>
	</b:column>

	<b:column span="4">
		<b:well size="lg">Look, I'm in a large well!</b:well>
	</b:column>
	
	<b:column span="4">
		<b:well><b:well>Look, I'm in a well in a well!</b:well></b:well>
	</b:column>
</b:row>	
