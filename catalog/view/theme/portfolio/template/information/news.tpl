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
                         <div class="col-xs-12 col-sm-3 col-md-3">
                            <?php echo $column_left; ?>
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
   

                            <article class="post infoblock article--text">
                                            <!-- Gallery Post -->
                                            <h5 class="post-title"><?php echo $heading_title; ?></h5>
                                            <!-- Blog post attributes #2 -->
                                            <div class="post-attrib">
                                           <!--    <div class="comment-baloon">75</div> -->
                                              <div class="post-data hidden ">
                                                <div class="post-date">2014 Jun, 14</div>
                                                <div class="post-author">by Alisia Silverstone in <a href="#">Stories</a>, <a href="#">Games</a></div>
                                              </div>
                                            </div>
                                            <!-- /Blog post attributes #2 -->

                                              <img src="<?php echo $image; ?>" alt="x" style=" width: 100%;">
                                          
                                            <div class="dividewhite2"></div>
                                            <!-- /FlexSlider -->

                                            <!-- Post Content -->
                                            <p >
                                                 <?php echo $description; ?>
                                             </p>
                                            <!-- /Post Content -->
                                            <!-- /Gallery Post -->
                            </article>

                
             
                  
                  <?php echo $content_bottom; ?>
                </div>
                      <?php if ($column_right) { ?>
                            <div class="col-xs-12 col-sm-3 col-md-3">
                                <?php echo $column_right; ?>
                            </div>
                         <?php } ?>
              </div>
          </div>
    
<?php echo $footer; ?>