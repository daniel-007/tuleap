<?php
//
// SourceForge: Breaking Down the Barriers to Open Source Development
// Copyright 1999-2000 (c) The SourceForge Crew
// http://sourceforge.net
//
// $Id$

require_once('pre.php');
require_once('proj_email.php');

$Language->loadLanguageMsg('admin/admin');

session_require(array('group'=>'1','admin_flags'=>'A'));

$HTML->header(array('title'=>$Language->getText('admin_newprojectmail','title')));

send_new_project_email($group_id);

print "<p>".$Language->getText('admin_newprojectmail','success')."</p>";

$HTML->footer(array());
?>
