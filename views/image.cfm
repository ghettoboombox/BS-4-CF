<cfimport prefix="b" taglib="../bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Image</h1>
		<p>b:graphicImage</p>
	</column>	
</row>




<h2>Introduction</h2>


<b:blockquote>
	<p>Add classes to an <img> element to easily style images in any project.</p>

	<footer><a href="http://getbootstrap.com/css/#images-responsive">http://getbootstrap.com/css/#images-responsive</a></footer>
</b:blockquote>


<p><code>&lt;b:graphicImage&gt;</code> is oriented towards supporting image libraries. This allows the application to globally set look and feel.</p>


<b:panel look="info" title="Attributes of <b:graphicImage>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	<tbody>
		<tr>
			<td>alt</td>
			<td>(none)</td>
			<td>Passthough of <code>alt</code>.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>height</td>
			<td>(none)</td>
			<td>Creates the height part of style</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>library</td>
			<td>(none)</td>
			<td>Defaults to <code>application.Bootstrap.ImageLibrary.default</code></td>
			<td>N/A</td>
		</tr>
		<tr>
			<td>name</td>
			<td>(none)</td>
			<td>This is a relative path, the library is prepended. If this is not set, perhaps you are doing a binding with AngularJS.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
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
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>shape</td>
			<td>(none)</td>
			<td>Such as rounded, circle, thumbnail</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
		<tr>
			<td>width</td>
			<td>(none)</td>
			<td>Creates the width part of style</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h2>Examples</h2>


<h3>Rounded</h3>

<b:graphicImage name="cat.jpg" shape="rounded" width="240" />


<h3>Circle</h3>

<b:graphicImage name="cat.jpg" shape="circle" width="240" />



<h3>Thumbnail</h3>

<b:graphicImage name="cat.jpg" shape="thumbnail" width="240" />





