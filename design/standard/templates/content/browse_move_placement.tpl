{let version=fetch(content,version,hash(object_id,$browse.content.object_id,version_id,$browse.content.object_version))
     placement_node=fetch(content,node,hash(node_id,$browse.content.previous_node_id))}
<div class="maincontentheader">
<h1>
    {'Choose new placement'
     |i18n('design/standard/content/view')}
</h1>
</div>

<p>
    {"Please choose the new placement for %name.
      The previous placement was in %placementname.

      Select the placement and click the %buttonname button.
      Using the recent and bookmark items for quick placement is also possible.
      Click on placement names to change the browse listing."
    |i18n('design/standard/content/view',,
          hash('%name',$version.version_name,
               '%placementname',$placement_node.name,
               '%buttonname','Select'|i18n('design/standard/content/view')))
    |nl2br}
</p>
{/let}