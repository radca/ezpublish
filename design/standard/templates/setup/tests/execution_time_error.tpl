{let current_execution_time=$test_result[2].current_execution_time
     required_execution_time=$test_result[2].required_execution_time}

<h3>{$result_number}. {"Insufficient execution time allowed to install eZ publish"|i18n("design/standard/setup/tests")}</h3>
<p>{"eZ publish will not work correctly with a execution time limit of %1."|i18n("design/standard/setup/tests",,array($current_execution_time))}
{"It's highly recommended that you fix this."|i18n("design/standard/setup/tests")}</p>
<p>{"Locate the php.ini settings file for your PHP installation. On unix systems, this is normally located at /etc/php.ini, on windows systems check the PHP installation path."|i18n("design/standard/setup/tests")}
{"Open the php.ini file and change the max_execution_time value to at least %1, and press %2"|i18n("design/standard/setup/tests",,array($required_execution_time, "Next"|i18n("design/standard/setup/tests")))}</p>
<p>{"If you are running eZ publish in a shared host environment, contant your ISP to perform the changes"|i18n("design/standard/setup/tests")}</p>

{/let}
