<div class="warning">
<h2>{"View not found"|i18n("design/standard/error/kernel")}</h2>
<p>{"The requested view %view could not be found in module %module"|i18n("design/standard/error/kernel",,
                                                                         hash('%view',$parameters.view|wash,
                                                                              '%module',$parameters.module|wash))}</p>
<p>{"Possible reasons for this is."|i18n("design/standard/error/kernel")}</p>
<ul>
    <li>{"The view name was misspelled, try changing the url."|i18n("design/standard/error/kernel")}</li>
    <li>{"The view does not exist for the module %module."|i18n("design/standard/error/kernel",,
                                                                hash('%module',$parameters.module|wash))}</li>
    <li>{"This site uses siteaccess matching in the url and you didn't supply one, try inserting a siteaccess name before the module in the url ."|i18n("design/standard/error/kernel")}</li>
</ul>
</div>

{section show=$embed_content}

{$embed_content}
{/section}
