<div class="maincontentheader">
<h1>{"Role list"|i18n("design/standard/role")}</h1>
</div>

<form action={concat($module.functions.list.uri,"/")|ezurl} method="post" >

<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
    <th width="97%">{"Name"|i18n("design/standard/role")}</th>
    <th width="1%">{"Edit"|i18n("design/standard/role")}</th>
    <th width="1%">{"Assign"|i18n("design/standard/role")}</th>
    <th>{"Remove"|i18n("design/standard/role")}</th>
</tr>

{section name=All loop=$roles sequence=array(bglight,bgdark)}
<tr>
    <td class="{$All:sequence}">
    <a href={concat("/role/view/",$All:item.id)|ezurl}>{$All:item.name}</a>
    </td>
    <td class="{$All:sequence}">
	<a href={concat("/role/edit/",$All:item.id)|ezurl}><img src={"edit.png"|ezimage} alt="{'Edit'|i18n('design/standard/role')}" title="{'Edit role'|i18n('design/standard/role')}" /></a>
    </td>
    <td class="{$All:sequence}">
	<a href={concat("/role/assign/",$All:item.id)|ezurl}><img src={"attach.png"|ezimage} alt="{'Assign'|i18n('design/standard/role')}" title="{'Assign role to user or group'|i18n('design/standard/role')}" /></a>
    </td>
    <td class="{$All:sequence}" align="right" width="1">
	<input type="checkbox" name="DeleteIDArray[]" value="{$All:item.id}" />
    </td>
</tr>
{/section}
<tr>
  <td colspan="3">
    <input class="button" type="submit" name="NewButton" value="{'New'|i18n('design/standard/role')}" />
  </td>
  <td align="right" width="1">
    <input type="image" name="RemoveButton" value="{'Remove'|i18n('design/standard/role')}" title="{'Remove selected roles'|i18n('design/standard/role')}" src={"trash.png"|ezimage} />
  </td>
</tr>
</table>

{include name=navigator
         uri='design:navigator/google.tpl'
         page_uri=concat('/role/list/')
         item_count=$role_count
         view_parameters=$view_parameters
         item_limit=$limit}

</form>
