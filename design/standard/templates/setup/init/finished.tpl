{*?template charset=latin1?*}
{include uri='design:setup/setup_header.tpl' setup=$setup}

{section show=and($email_info.sent,$email_info.result|not)}
<div class="error">
<p>
  <h2>{"Email sending failed"|i18n("design/standard/setup/init")}</h2>
  <ul>
    <li>{"Failed sending registration email using"|i18n("design/standard/setup/init")} {section show=eq($email_info.type,1)}{"sendmail"|i18n("design/standard/setup/init")}{section-else}{"SMTP"|i18n("design/standard/setup/init")}{/section}.</li>
  </ul>
</p>
</div>
{/section}

<h2>{"Congratulations, eZ publish should now run on your system."|i18n("design/standard/setup/init")}</h2>
<p>
{"If you need help with eZ publish, you can go to %ezlink and get help in the forums.
  If you find a bug (error), please go to %buglink and report it.
  With your help we can fix the errors eZ publish might have and implement new features."
 |i18n("design/standard/setup/init",,
       hash('%buglink',concat('<a target="_other" href="http://ez.no/developer/ez_publish_3/bug_reports">',"eZ publish bug reports"|i18n("design/standard/setup/init"),'</a>'),
            '%ezlink',concat('<a target="_other" href="http://ez.no/developer/ez_publish_3/forum">',"ez.no"|i18n("design/standard/setup/init"),'</a>')))}
</p>

<p>
{"Click on the URL to access your new %ezlink or click the %donebutton button. Enjoy one of the most successful web content management systems!"
 |i18n("design/standard/setup/init",,
       hash('%ezlink',concat('<a href="',$site_info.url,'">',"eZ publish website"|i18n("design/standard/setup/init"),'</a>'),
            '%donebutton',concat('<i>',"Done"|i18n("design/standard/setup/init"),'</i>')))}
</p>

<p>{"If you ever want to restart this setup, edit the file %filename and look for a line that says:"
    |i18n("design/standard/setup/init",,
          hash('%filename','<i>settings/override/site.ini.append.php</i>'))}
</p>
<pre class="example">[SiteAccessSettings]
CheckValidity=false</pre>
<p>
 {"Change the second line from %false to %true."
  |i18n("design/standard/setup/init",,
        hash('%false','<i>false</i>',
             '%true','<i>true</i>'))}
</p>
<pre class="example">[SiteAccessSettings]
CheckValidity=true</pre>
</p>

<br/>

<blockquote class="note">
<p>
 <b>{"Note:"|i18n("design/standard/setup/init")}</b>
 {"The default username for the administrator is %1 and the default password is %2."|i18n("design/standard/setup/init",,array("<i>admin</i>","<i>publish</i>"))}
</p>
</blockquote>

<br/>

<form method="post" action="{$script}">
  <div class="buttonblock">
    <input class="defaultbutton" type="submit" name="Refresh" value="{'Done'|i18n('design/standard/setup/init')}" />
  </div>
</form>
