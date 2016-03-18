<?php echo $header; ?>
<!-- Optional header components (ex: slider) -->
    <div class="pg-opt hidden">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <h2>Blog</h2>
                </div>
                <div class="col-xs-6">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Blog</a></li>
                        <li class="active">Large grid</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
  <?php echo $content_top; ?>
  <!-- MAIN CONTENT -->
<div class=" e-block-centered e-block-skin hp-services" data-stellar-background-ratio="0.5">
             <div class="container">
       
              <div class="row">
                <!-- CONTENT -->
                <?php if ($column_left) { ?>
                  <div class="col-sm-3">
                    <div class="sidebar">
                      <?php echo $column_left; ?>
                    </div>
                  </div>
                <?php } ?>

                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-5'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-8'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
                <div class="<?php echo $class; ?>">
                  <div class="section-title-wr">
                      <h2 class="font-accident-one-bold uppercase wow fadeIn"><?php echo $heading_title; ?></h2>
                  </div>
                    <div class="dividewhite2"></div>
                 <div class="row multi-columns-row">
                   <?php if(!empty($all_news)) { ?>
                    <?php foreach ($all_news as $news) { ?>
                     
                    <div class="col-xs-12 col-sm-4 col-md-4    infoblock infoblock--list">
                    <hr>
                    <a href="<?php echo $infoval['information_href']; ?>"><img src="<?php echo $news['image']; ?>" class="img-responsive" alt="<?php echo $news['title']; ?>"></a>
                    <div class="dividewhite1"></div>
                    <h5 class="font-accident-two-oblique news_title--fix_h"><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></h5>
                     <div class="dividewhite1"></div>

                      <h6 class="font-accident-two-oblique"><b><?php echo $news['date_added']; ?></b></h6> 
                      <div class="dividewhite1"></div>
                 <!--    <p>
                    
                      <?php echo $news['description']; ?>


                    </p>   -->
                    <a role="button" href="<?php echo $news['view']; ?>" class="btn  btn-lg btn-block  btn-gr bnt_more_sq">Подробнее</a>

                    
                   
                   



                      <div class="dividewhite1"></div>

                    </div>












                   <?php } ?>
                  <?php } ?>
                </div>
                <!-- PAGINATION -->
                  <div class="row">
                    <div class="col-sm-12 text-center m-t-60">
                      <?php echo $pagination; ?>
                    </div>
                  </div>
                <!-- /PAGINATION -->

                  
                  <?php echo $content_bottom; ?>
                </div>

                <?php if ($column_right) { ?>
                  <div class="col-sm-4 ">
                    <!-- SIDEBAR -->
                    <div class="sidebar">
                      <?php echo $column_right; ?>
                    </div>
                  </div>
                <?php } ?>
              </div>
          </div>
      </div>
  
<?php echo $footer; ?>