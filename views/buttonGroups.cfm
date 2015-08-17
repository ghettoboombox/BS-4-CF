
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">ButtonGroups Examples</b:h1>
		<p>&lt;buttonToolbar&gt; &amp; &lt;buttonGroup&gt;</p>
	</b:column>	
</b:row>





<b:h2>Introduction</b:h2>



<h3>&lt;b:buttonToolbar&gt;</h3>

<b:panel look="info" title="Attributes of &lt;b:buttonToolbar&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>size</td>
			<td>(none)</td>
			<td>reserved for future use</td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>



<h3>&lt;b:buttonGroup&gt;</h3>

<b:panel look="info" title="Attributes of &lt;b:buttonGroup&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>justified</td>
			<td>false</td>
			<td>Stretch buttons over the width of the container.</td>
		</tr>
		<tr>
			<td>orientation</td>
			<td>horizontal</td>
			<td>As opposed to Vertical.</td>
		</tr>
		
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>




<h2>Example</h2>


<b:buttonToolbar>
	<b:buttonGroup>
		<b:button value="1" />
		<b:button value="2" />
	</b:buttonGroup>
	<b:buttonGroup>
		<b:button value="3" />
		<b:button value="4" />
		<b:button value="5" />
		<b:button value="6" />
		<b:button value="7" />
		<b:button value="8" />
	</b:buttonGroup>
	<b:buttonGroup>
		<b:button value="9" />
	</b:buttonGroup>
</b:buttonToolbar>

