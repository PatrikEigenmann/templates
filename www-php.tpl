<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<?php
// **************************************************************************************
// <webscript.php> - <description>
// --------------------------------------------------------------------------------------
// Author:		Patrik Eigenmann
// eMail:		p.eigenmann@gmx.net
// --------------------------------------------------------------------------------------
// Changel Log:
// DAY YYYY-MM-DD File created.                                             Version:00.01
// --------------------------------------------------------------------------------------
// To Do's:
// **************************************************************************************

$title = "Title of the Script";
$description = "PHP Tutorial";
$charset = "UTF-8"
$keywords = "PHP, HTML, CSS, XML, JavaScript";
$author = "Patrik Eigenmann (p.eigenmann@gmx.net)"
$css_file = "/css/php_styles.php";

?>
<html>
    <head>
        <?
        if(isset($title))
            echo "<title>$title</title>";
        if(isset($description))
            echo "<meta name=\"description\" content=\"$description\" />";
        if(isset($charset))
            echo "<meta charset=\"$charset\">";
        if(isset($keywords))
            echo "<meta name=\"keywords\" content=\"$keywords\" />";
        if(isset($author))
            echo "<meta name=\"author\" content=\"$author\">";
        echo "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">";
        if(isset($css_file))
            echo "<link rel=\"stylesheet\" href=\"$css_file\">";
        ?>
    </head>
    <body>
    </body>
</html>