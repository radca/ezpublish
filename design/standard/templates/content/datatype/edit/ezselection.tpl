{let selected_id_array=$attribute.content}

<select name="{$attribute_base}_ezselect_selected_array_{$attribute.id}[]" {section show=$attribute.class_content.is_multiselect}multiple{/section}>
{section name=Option loop=$attribute.class_content.options}
<option value="{$Option:item.id}" {section show=$selected_id_array|contains($Option:item.id)}selected="selected"{/section}>{$Option:item.name|wash(xhtml)}</option>
{/section}</select>

{/let}