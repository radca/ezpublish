{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{*{default content_object=$node.object
         content_version=$node.contentobject_version_object
         node_name=$node.name}*}

<div class="content-edit">

<form enctype="multipart/form-data" method="post" action={concat("/content/edit/",$object.id,"/",$edit_version,"/",$edit_language|not|choose(concat($edit_language,"/"),''))|ezurl}>

    <h1>{"Edit %1"|i18n("design/standard/content/edit",,array($class.name|wash))}</h1>

    {include uri="design:content/edit_validation.tpl"}

{*
    {include uri="design:content/edit_placement.tpl"}
    <br/>
*}
    {include uri="design:content/edit_attribute.tpl"}

    <div class="controlbar">
    <input class="button" type="submit" name="PublishButton" value="{'Send for publishing'|i18n('design/standard/content/edit')}" />
    <input class="button" type="submit" name="StoreButton" value="{'Store draft'|i18n('design/standard/content/edit')}" />
    <input class="button" type="submit" name="DiscardButton" value="{'Discard'|i18n('design/standard/content/edit')}" />
    </div>

<!-- Dummy list START -->

<h2>Related objects</h2>

<div class="image-thumbnail-list">

<div class="image-thumbnail-item">

<img src="images/testbilde01.jpg" height="128" width="128" alt="" /><br />

<p><input type="checkbox" /> An image</p>

<input class="linkbox" type="text" value="&lt;object id=1 /&gt;">

</div>

<div class="image-thumbnail-item">

<img src="images/testbilde02.jpg" height="128" width="128" alt="" /><br />

<p><input type="checkbox" /> Another image</p>

<input class="linkbox" type="text" value="&lt;object id=2 /&gt;">

</div>

<div class="image-thumbnail-item">

<img src="images/testbilde03.jpg" height="128" width="128" alt="" /><br />

<p><input type="checkbox" /> Last image</p>

<input class="linkbox" type="text" value="&lt;object id=3 /&gt;">

</div>

<div class="break"></div>
</div>

<table class="list" cellspacing="0">
<tr>
    <th class="checkbox"></th>
    <th class="icon"></th>
    <th class="name">Attached file:</th>
    <th class="class">File type:</th>
    <th class="filesize">Size:</th>
    <th class="code">Code:</th>
</tr>
<tr class="bglight">
    <td class="checkbox"><input type="checkbox" /></td>
    <td class="icon"><img src="images/pdf_file-icon-16x16.gif" height="16" width="16" alt="" /></td>
    <td class="name">Technical description</td>
    <td class="class">PDF</td>
    <td class="filesize">380 KB</td>
    <td class="code"><input class="linkbox" type="text" value="&lt;object id=4 /&gt;"></td>
</tr>
<tr class="bgdark">
    <td class="checkbox"><input type="checkbox" /></td>
    <td class="icon"><img src="images/doc_file-icon-16x16.gif" height="16" width="16" alt="" /></td>
    <td class="name">Meeting summary</td>
    <td class="class">DOC</td>
    <td class="filesize">560 KB</td>
    <td class="code"><input class="linkbox" type="text" value="&lt;object id=5 /&gt;"></td>
</tr>
</table>

<table class="list" cellspacing="0">
<tr>
    <th class="checkbox"></th>
    <th class="icon"></th>
    <th class="name">Related content:</th>
    <th class="class">Class type:</th>
    <th class="code">Code:</th>
</tr>
<tr class="bglight">
    <td class="checkbox"><input type="checkbox" /></td>
    <td class="icon"><img src="images/folder-icon-16x16.gif" height="16" width="16" alt="" onclick="popLayer(1); displaystatus(1); return true"/></td>
    <td class="name">Data list something</td>
    <td class="class">Folder</td>
    <td class="code"><input class="linkbox" type="text" value="&lt;object id=6 /&gt;"></td>
</tr>
<tr class="bgdark">
    <td class="checkbox"><input type="checkbox" /></td>
    <td class="icon"><img src="images/document-icon-16x16.gif" height="16" width="16" alt="" onclick="popLayer(1); displaystatus(1); return true"/></td>
    <td class="name">Another document</td>
    <td class="class">Article</td>
    <td class="code"><input class="linkbox" type="text" value="&lt;object id=7 /&gt;"></td>
</tr>
</table>

<div class="controlbar">
<div class="editblock">
<input class="button" type="submit" value="Delete" />
<input class="button" type="submit" value="Add existing" />
</div>
<div class="createblock">
<select>
    <option>Media</option>
</select>
<input class="button" type="submit" value="Add new" />
</div>
</div>

<!-- Dummy list END -->

</form>

</div>
