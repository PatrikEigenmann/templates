<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<?php
/**
 * Link name: 
 * Description: 
 */
// Include all library and classes
include_once("libs/CConfig.php");
include_once("libs/CPage.php");
include_once("libs/CMetadataExtractor.php");

// Create the config instance
$cls_config = CConfig::GetInstance();

// Give this page a title
$cls_config->Set("title", "Welcome to my Development Server");

// This should be a description of Page
$description = "";
$description .= " ";
$description .= " ";
$description .= " ";
$description .= " ";
$description .= " ";
$description .= " ";
$description .= " ";
$cls_config->Set("description", $description);

// This should be the keywords of the Page
$keywords = "HTML programming language, PHP programming language, XML programming language,";
$keywords .= " JavaScript programming language, CSS programming language, SQL programming language,";
$keywords .= " Apache Webserver, MySQL Database Server, Fullstack Developing services, CMS Content";
$keywords .= " Management Systems, Web portals";
$cls_config->Set("keywords", $keywords);
$cls_page = new CPage(0, "index.php");

$root_path = $cls_config->Get("absolut_path");
$extractor = new CMetadataExtractor($root_path);
$metadataList = $extractor->listFilesWithMetadata();

$rowspan = 6;

?>
<html>
    <?=$cls_page->renderHeader(); ?>
    <body>
        <table style="width:700px">
            <tr>
                <td><img src="<?=$cls_config->Get("img_server_path")?>/bk_pixel.png;" width="233" height="1" alt="" /></td>
                <td><img src="<?=$cls_config->Get("img_server_path")?>/bk_pixel.png;" width="467" height="1" alt="" /></td>
            </tr><tr>
                <td>&nbsp;</td>
                <td><h1>Option 1 implicit function call</h1></td>
            </tr><tr>
                <td rowspan="<?=$rowspan; ?>">
                <?php
                    foreach($metadataList as $metadata)
                        echo "<a href=\"".$metadata["filename"]."\">".$metadata["link_name"]."</a><br />\n";
                ?>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>