<form method="post" action={concat('/setup/templateedit/',$template)|ezurl}>
<h1>{"Template edit"|i18n("setup/templateadmin")} {$template}</h1>

<textarea name=TemplateContent cols="80" rows="30">{$template_content|wash(xhtml)}</textarea>

<div class="buttonblock">
<input class="button" type="submit" value="{"Save"|i18n("setup/templateadmin")}" name="SaveButton" />
<input class="button" type="submit" value="{"Discard"|i18n("setup/templateadmin")}" name="DiscardButton" />
</div>

</form>
