<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Favicons -->
  <link href="favicon.ico" rel="icon" />
  <link rel="shortcut icon" href="favicon.ico">
  <link rel="apple-touch-icon" href="apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="apple-touch-icon-114x114.png">
  
  <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <!-- Styles -->
  <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Volkhov:400italic' rel='stylesheet' type='text/css'>
  <link href="catalog/view/theme/jewish/assets/css/jewish.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
<?php echo $google_analytics; ?>
  <script type="text/javascript">
    var mobile = false;
  </script>
</head>
<body class="<?php echo $class; ?>">
<!-- MAIN WRAPPER -->
<div class="body-wrap">
<!-- HEADER -->
<div id="divHeaderWrapper">
  <header class="header-standard-2">     
    <!-- MAIN NAV -->
    <div class="navbar navbar-wp navbar-fixed affix-top navbar-shadow navbar-arrow" data-spy="affix" data-offset-top="100" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fa fa-bars icon-custom"></i>
                </button>
                <?php if ($logo) { ?>
                  <a class="navbar-brand" href="<?php echo $home; ?>">
                    <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/>
                  </a>
                <?php } ?>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="about_us">О проекте</a></li>
                    <?php if (!empty($icategories_root)) { ?>
                        <?php foreach ($icategories_root as $ir) { ?>
                            <?php if ( !empty($icategories[$ir['icategory_id']]) && count($icategories[$ir['icategory_id']]) > 0 )  { ?>
                                <li class="dropdown">
                                    <a href="<?php echo $ir['icategory_href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $ir['icategory_title']; ?></a>
                                    <ul class="dropdown-menu">
                                        <?php foreach ($icategories[$ir['icategory_id']] as $ic) { ?>
                                            <li><a href="<?php echo $ic['icategory_href']; ?>"><?php echo $ic['icategory_title']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </li>
                            <?php } else { ?>
                                <li><a href="<?php echo $ir['icategory_href']; ?>"><?php echo $ir['icategory_title']; ?></a></li>
                            <?php } ?>
                           
                        <?php } ?>
                    <? } ?>
                    <li><a href="<?php echo $news; ?>"><?php echo $text_news; ?></a></li>
                    <li ><a href="<?php echo $places; ?>"><?php echo $text_places; ?></a></li> 
                    <?php if ($logged) { ?>
                      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                      <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                      <?php } else { ?>
                      <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                      <li><a  href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                      <?php } ?>
                </ul>
               
            </div><!--/.nav-collapse -->
        </div>
    </div>
  </header>        
</div>