{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{"Specify export properties. Default settings will probably be suitable for your needs."|i18n("design/standard/package/creators/ezcontentobject")}</p>


    <label>{"Miscellaneous"|i18n("design/standard/package/creators/ezcontentobject")}</label>

    <input class="checkbox" type="checkbox" Name="IncludeClasses" value="1" {if $options.include_classes}checked="checked"{/if} />
        {"Include class definitions."|i18n("design/standard/package/creators/ezcontentobject")}<br />

    <input class="checkbox" type="checkbox" Name="IncludeTemplates" value="1" {if $options.include_templates}checked="checked"{/if} />
        {"Include templates related to exported objects."|i18n("design/standard/package/creators/ezcontentobject")}<br />
	{"Select templates from the following siteaccesses"|i18n("design/standard/package/creators/ezcontentobject")}<br />
	<select size="3" name="SiteAccesses[]" multiple="multiple">
	    {section loop=$available_site_accesses}
	        <option value="{$:item}" {if $options.site_access_array|contains($:item)}selected="selected"{/if}>{$:item}</option>
	    {/section}
	</select><br />


    <label>{"Versions"|i18n("design/standard/package/creators/ezcontentobject")}</label>

    <input class="radio" type="radio" Name="VersionExport" value="current" {if $options.versions|eq("current")}checked="checked"{/if} />
        {"Published version"|i18n("design/standard/package/creators/ezcontentobject")}<br />

    <input class="radio" type="radio" Name="VersionExport" value="all" {if $options.versions|eq("all")}checked="checked"{/if} />
        {"All versions"|i18n("design/standard/package/creators/ezcontentobject")}<br />


    <label>{"Languages"|i18n("design/standard/package/creators/ezcontentobject")}</label>

    {"Select languages to export"|i18n("design/standard/package/creators/ezcontentobject")}<br />
    <select size="5" name="Languages[]" multiple="multiple">
	{section loop=$available_languages}
	    <option value="{$:item.locale|wash}" {if $options.language_array|contains($:item.locale)}selected="selected"{/if}>{$:item.name|wash}</option>
	{/section}
    </select><br />


    <label>{"Node assignments"|i18n("design/standard/package/creators/ezcontentobject")}</label>

    <input class="radio" type="radio" Name="NodeAssignment" value="selected" {if $options.node_assignment|eq("selected")}checked="checked"{/if} />
        {"Keep all in selected nodes"|i18n("design/standard/package/creators/ezcontentobject")}<br />

    <input class="radio" type="radio" Name="NodeAssignment" value="main" {if $options.node_assignment|eq("main")}checked="checked"{/if} />
        {"Main only"|i18n("design/standard/package/creators/ezcontentobject")}<br />
	

    <label>{"Related objects"|i18n("design/standard/package/creators/ezcontentobject")}</label>

    <input class="radio" type="radio" Name="RelatedObjects" value="selected" {if $options.related_objects|eq("selected")}checked="checked"{/if} />
        {"Keep all in selected nodes"|i18n("design/standard/package/creators/ezcontentobject")}<br />

    <input class="radio" type="radio" Name="RelatedObjects" value="none" {if $options.related_objects|eq("none")}checked="checked"{/if} />
        {"None"|i18n("design/standard/package/creators/ezcontentobject")}<br />


    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
