<table>
<tr>
  <td><a href={concat("reference/view/",$reference_type)|ezurl}>{'Main'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/modules")|ezurl}>{'Modules'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/hierarchy")|ezurl}>{'Class hierarchy'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/annotated")|ezurl}>{'Compound list'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/files")|ezurl}>{'File list'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/functions")|ezurl}>{'Compound members'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/globals")|ezurl}>{'File members'|i18n('design/standard/reference/ez')}</a></td>
  <td><a href={concat("reference/view/",$reference_type,"/related")|ezurl}>{'Related pages'|i18n('design/standard/reference/ez')}</a></td>
</tr>
</table>

{$reference_result.content}
