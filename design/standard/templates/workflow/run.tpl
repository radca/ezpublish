<form action={concat($module.functions.process.uri,"/",$process.id)|ezurl} method="post" name="WorkflowProcess">

<h1>{"Workflow process"|i18n("design/standard/workflow")} {$process.id}</h1>

<p>
{"Workflow process was created at"|i18n("design/standard/workflow")} <b>{$process.created|l10n(shortdatetime)}</b>
{"and modified at"|i18n("design/standard/workflow")} <b>{$process.modified|l10n(shortdatetime)}</b>.
</p>

<h2>{"Workflow"|i18n("design/standard/workflow")}</h2>
<p>
{"Using workflow"|i18n("design/standard/workflow")} <b><a href={concat($module.functions.edit.uri,"/",$process.workflow_id)|ezurl}>{$current_workflow.name} ({$process.workflow_id})</a></b> {"for processing."|i18n("design/standard/workflow")}
</p>

<h2>{"User"|i18n("design/standard/workflow")}</h2>
<p>
{"This workflow is running for user"|i18n("design/standard/workflow")} <b>{$process.user.login}</b>.
</p>

<h2>{"Content object"|i18n("design/standard/workflow")}</h2>
<p>
{"Workflow was created for content"|i18n("design/standard/workflow")} <b><a href={concat("/content/view/",$process.content_id)|ezurl}>{$process.content.name}</a></b>
{"using version"|i18n("design/standard/workflow")} <b><a href={concat("/content/view/",$process.content_id,"/",$process.content_version)|ezurl}>{$process.content_version}</a></b>
{"in parent"|i18n("design/standard/workflow")} <b><a href={concat("/content/view/",$process.node_id)|ezurl}>{$process.node.name}</a></b>
</p>

<h2>{"Workflow event log"|i18n("design/standard/workflow")}</h2>

<table>
<tr>
  <th>{"Name"|i18n("design/standard/workflow")}</th>
  <th>{"Description"|i18n("design/standard/workflow")}</th>
  <th>{"Status"|i18n("design/standard/workflow")}</th>
  <th>{"Information"|i18n("design/standard/workflow")}</th>
</tr>
{section name=EventLog loop=$event_log}
<tr>
  <td>{$EventLog:item.type_group}/{$EventLog:item.type_name}</td>
  <td>{$EventLog:item.description}</td>
  <td>{$EventLog:item.status_text}</td>
  <td>{$EventLog:item.information}</td>
</tr>
{/section}
</table>

</form>
