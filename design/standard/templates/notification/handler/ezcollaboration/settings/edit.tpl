{let handlers=$handler.collaboration_handlers
     selection=$handler.collaboration_selections}

<div class="contentheader">
    <h2>{"Collaboration notification"|i18n("design/standard/notification/collaboration")}</h2>
</div>
<p>{"Choose which collaboration items you wish to get notifications for."|i18n("design/standard/notification/collaboration")}</p>

<input type="hidden" name="CollaborationHandlerSelection" value="1" />

<table border="0" cellspacing="0" cellpadding="0">
{section name=Handlers loop=$handlers}
    {let types=$:item.notification_types}
        {section show=or($:types,$:types|gt(0))}
            {section show=is_array($:types)}
                <tr>
                    <td colspan="2">
                        {$:item.info.type-name|wash}
                    </td>
                </tr>
                {section name=Types loop=$:types}
                    <tr>
                        <td>
                              <input type="checkbox" name="CollaborationHandlerSelection_{$handler.id_string}[]"
                                                     value="{$Handlers:item.info.type-identifier}_{$:item.value}"
                                                     {section show=$selection|contains(concat($Handlers:item.info.type-identifier,'_',$:item.value))}checked="checked"{/section} />
                        </td>
                        <td>
                            {$:item.name|wash}
                        </td>
                    </tr>
                {/section}
            {section-else}
                <tr>
                    <td>
                          <input type="checkbox" name="CollaborationHandlerSelection_{$handler.id_string}[]"
                                                 value="{$Handlers:item.info.type-identifier}"
                                                 {section show=$selection|contains($Handlers:item.info.type-identifier)}checked="checked"{/section} />
                    </td>
                    <td>
                        {$:item.info.type-name|wash}
                    </td>
                </tr>
            {/section}

        {section-else}

        {/section}
    {/let}
{/section}
</table>

{/let}