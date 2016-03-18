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
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>

    

    <link rel="stylesheet" type="text/css" href="catalog/view/theme/portfolio/assets/css/portfolio.css">
     <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <?php echo $google_analytics; ?>

    <!-- Favicons -->
    <link href="favicon.png" rel="icon" />
    <!-- CSS -->

   <!--  <link href="catalog/view/theme/portfolio/assets/css/simpletextrotator.css" rel="stylesheet">
    <link href="catalog/view/theme/portfolio/assets/css/font-awesome.min.css" rel="stylesheet"> -->
    <link href="catalog/view/theme/portfolio/assets/css/et-line-font.css" rel="stylesheet">
    <link href="catalog/view/theme/portfolio/assets/css/magnific-popup.css" rel="stylesheet">
    <link href="catalog/view/theme/portfolio/assets/css/flexslider.css" rel="stylesheet">
    <link href="catalog/view/theme/portfolio/assets/css/owl.carousel.css" rel="stylesheet">
    <link href="catalog/view/theme/portfolio/assets/css/animate.css" rel="stylesheet">
    <link href="catalog/view/theme/portfolio/assets/css/style.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="assets/styles/styles.css">

</head>

<body>

    <!-- Preloader -->
    <div class="page-loader">
        <div class="loader">Loading...</div>
    </div>

    <!-- Navigation start -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">

        <div class="container">
    
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#custom-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <a class="navbar-brand" href="index.html">Rival</a> -->
            </div>
    
            <div class="collapse navbar-collapse" id="custom-collapse">
    
                <ul class="nav navbar-nav navbar-right">
                     
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

                    <li><a href="#portfolio">Портфолио </a> </li>

                    <li><a href="#contact">Контакты </a>    </li>
                </ul>
            </div>
    
        </div>

    </nav>
    <!-- Navigation end -->















                    
              


   