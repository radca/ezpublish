{let section=fetch(section,object,hash(section_id,$browse.content.section_id))}
<div class="maincontentheader">
<h1>
    {'Choose section assignment'
     |i18n('design/standard/section')}
</h1>
</div>

<p>
    {"Please choose where you want to start the section assignment for section %sectionname.

    Select the placements and click the %buttonname button.
    Using the recent and bookmark items for quick placement is also possible.
    Click on placement names to change the browse listing."
    |i18n('design/standard/section',,
          hash('%sectionname',$section.name,
               '%buttonname','Select'|i18n('design/standard/content/view')))
    |nl2br}
</p>
{/let}