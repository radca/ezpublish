{let page_limit=15
     list_count=fetch('content','pending_count')}

<form name="pendinglistaction" action={concat("content/pendinglist/")|ezurl} method="post" >

<div class="maincontentheader">
<h1>{"My pending list"|i18n("design/standard/content/view")}</h1>
</div>

{let pending_list=fetch('content','pending_list',hash(limit,$page_limit,offset,$view_parameters.offset))}

{section show=$pending_list}

<table class="list" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
    <th>{"Name"|i18n("design/standard/content/view")}</th>
    <th>{"Class"|i18n("design/standard/content/view")}</th>
    <th>{"Section"|i18n("design/standard/content/view")}</th>
    <th>{"Version"|i18n("design/standard/content/view")}</th>
    <th>{"Last modified"|i18n("design/standard/content/view")}</th>
</tr>

{section name=PendingList loop=$pending_list sequence=array(bglight,bgdark)}
<tr class="{$PendingList:sequence}">
   <td>
        <a href={concat("/content/versionview/",$PendingList:item.contentobject.id,"/",$PendingList:item.version,"/")|ezurl}>
            {$PendingList:item.contentobject.name|wash}
        </a>
    </td>
    <td>
        {$PendingList:item.contentobject.content_class.name|wash}
    </td>
    <td>
        {$PendingList:item.contentobject.section_id}
    </td>
    <td>
        {$PendingList:item.version}
    </td>
    <td>
        {$PendingList:item.modified|l10n(datetime)}
    </td>
</tr>
{/section}
</table>
{include name=navigator
         uri='design:navigator/google.tpl'
         page_uri=concat('/content/pendinglist/')
         item_count=$list_count
         view_parameters=$view_parameters
         item_limit=$page_limit}

{section-else}

<div class="feedback">
<h2>{"Your pending list is empty"|i18n("design/standard/content/view")}</h2>
</div>

{/section}