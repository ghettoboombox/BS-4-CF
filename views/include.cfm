
<cfimport prefix="b" taglib="../bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Include</h1>
		<p>b:include</p>
	</column>	
</row>


<h2>Introduction</h2>

<p>This is a passthrough of <code>&lt;cfinclude&gt;</code>. It also has the conditional processing of processed and rendered</p>

<b:panel look="info" title="Attributes of &lt;b:include&gt;">

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
			<td>template</td>
			<td>(required)</td>
			<td>Pass through of <code>template=</code> attribute. If a relative path is used, it is from the install directory of this tag. It is recommended absolute paths be used</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>



<h2>Example</h2>


<b:include template="simple.cfm" />

