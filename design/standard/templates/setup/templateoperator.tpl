<form method="post" action={'setup/templateoperator'|ezurl}>

<h1>{'Template operator wizard'|i18n('design/standard/setup')}</h1>
<p>
    Welcome to the wizard for creating a new template operator.<br/>
    Template operators are used for working on template elements such as<br/>
    variables and strings and can also be used to create new data.<br/>
    This wizard will take you trough a couple of steps where you have to<br/>
    make some choices and input some data for the wizard, when you're<br/>
    done a new operator is created for you and will be available for download.<br/>
</p>

<div class="buttonblock">
<input type="hidden" value="basic" name="OperatorStep" />
<input class="defaultbutton" type="submit" value="{'Start'|i18n('design/standard/setup','Template operator start')}" name="TemplateOperatorStepButton" />
</div>

</form>
