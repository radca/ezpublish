<form method="post" action={'setup/datatype'|ezurl}>

<h1>{'Datatype wizard'|i18n('design/standard/setup')}</h1>

<h2>{'Optional information'|i18n('design/standard/setup')}</h2>

<div class="objectheader">
<h2>{'Name of class'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">
<input type="text" name="ClassName" value="{$class_name|wash}" size="40" />
</div>

<div class="objectheader">
<h2>{'Constant name'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">
<input type="text" name="ConstantName" value="{$constant_name|wash}" size="40" />
</div>

<div class="objectheader">
<h2>{'The creator of the datatype'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">
<input type="text" name="CreatorName" value="{fetch(user,current_user).contentobject.name|wash}" size="40" />
</div>

<div class="objectheader">
<h2>{'Description of your datatype'|i18n('design/standard/setup','Datatype')}</h2>
</div>
<div class="object">
<p>{'The first line will be used as the brief description and the rest are operator documentation.'|i18n('design/standard/setup','Datatype')}</p>
<textarea class="box" name="Description" cols="60" rows="5">{'Handles the datatype %datatypename
By using %datatypename you can ...'|i18n('design/standard/setup','Datatype default description',hash('%datatypename',$datatype_name))}</textarea>
</div>

<div class="object">
<p>{'Once the download button is clicked the code will be generated and the browser will ask you to store the generated file.'|i18n('design/standard/setup','Datatype')}</p>
</div>

<div class="buttonblock">
<input type="hidden" value="download" name="OperatorStep" />
<input class="defaultbutton" type="submit" value="{'Download'|i18n('design/standard/setup','Datatype download')} {'>>'|wash}" name="DatatypeStepButton" />
<input class="button" type="submit" value="{'Restart'|i18n('design/standard/setup','Datatype restart')}" name="DatatypeRestartButton" />
</div>

{section name=Persistence loop=$persistent_data}
<input type="hidden" name="PersistentData[{$:key|wash}]" value="{$:item|wash}" />
{/section}

</form>
