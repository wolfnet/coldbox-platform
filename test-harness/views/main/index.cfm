﻿<cfoutput>
<div class="jumbotron">
	<img src="includes/images/ColdBoxLogoSquare_125.png" class="pull-left margin10" alt="logo"/>
	<h1>#prc.welcomeMessage#</h1>
	<p>
		 <strong>#getSetting("codename",1)# #getSetting("version",1)# (#getsetting("suffix",1)#)</strong>.
		Test Harness Application
		<a class="btn btn-primary" href="index.cfm?fwreinit=1" >
			<strong>Reinitialize Framework</strong>
		</a>
	</p>
</div>

<div class="row">
	<div class="col-md-9">

		<section id="eventHandlers">
		<div class="page-header">
			<h2>
				Registered Event Handlers
			</h2>
		</div>
		<p>
			You can click on the following event handlers to execute their default action
			<span class="label label-important">index()</span>
		</p>
		<ul>
			<cfloop list="#getSetting("RegisteredHandlers")#" index="handler">
			<li><a href="#event.buildLink( handler )#">#handler#</a></li>
			</cfloop>
		</ul>
		</section>

		<section id="modules">
		<div class="page-header">
	        <h2>
	        	Registered Modules
			</h2>
		</div>
		<p>Below are your application's loaded modules, click on them to visit them.</p>
		<ul>
			<cfloop collection="#getSetting("Modules")#" item="thisModule">
			<li><a href="#event.buildLink( getModuleConfig( thisModule ).entryPoint )#">#thisModule#</a></li>
			</cfloop>
		</ul>
		<cfif structCount( getSetting("Modules") ) eq 0>
			<div class="alert alert-info">There are no modules in your application</div>
		</cfif>
		</section>

	</div>

	<!---Side Bar --->
	<div class="col-md-3">
		<div class="well">
			<ul class="nav nav-list">
				<li><strong>Actions</strong></li>
			</ul>
		</div>
	</div>
</div>
</cfoutput>