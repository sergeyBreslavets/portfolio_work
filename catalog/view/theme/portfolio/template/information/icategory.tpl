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
  <!-- MAIN CONTENT литература -->

 <div id="content">
       <div class=" e-block-centered e-block-skin hp-services" data-stellar-background-ratio="0.5">
             <div class="container">
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
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="post-item">
                        <div class="post-content">  
                          <h2 class="font-accident-one-bold uppercase wow fadeIn"><?php echo $heading_title; ?></h2>
                            <?php if (!empty($description)) { ?>
                              <div class="post-desc"> 
                               <?php echo $description; ?>
                              </div>
                            <?php } ?>
                        </div>
                        </div>
                      
                      </div>
                  </div>
                  <?php if(!empty($informations)){ ?> 
                  <div class="row">
                      <?php foreach ($informations as $infoval) { ?>
                       





                    <div class="col-xs-12 col-sm-6 col-md-6   infoblock infoblock--list mt-1">
                    <hr>
                    <a href="<?php echo $infoval['information_href']; ?>"><img src="<?php echo $infoval['image']; ?>" class="img-responsive" alt="<?php echo $infoval['title']; ?>"></a>
                    <div class="dividewhite1"></div>
                    <h5 class="font-accident-two-oblique news_title--fix_h"><a href="<?php echo $infoval['information_href']; ?>"><?php echo $infoval['title']; ?></a></h5>
                   <!--  <p>
                     <?php echo $infoval['sub_description']; ?>
                    </p> -->  
                <a role="button" href="<?php echo $infoval['information_href']; ?>" class="btn  btn-lg btn-gr btn-block 
bnt_more_sq">Подробнее</a>

                    </div>





                      <?php } ?>
                    
                  </div>
                  <div class="pagination-delimiter">
                    <?php echo $pagination; ?>
                  </div>
                  <?php } ?>       

                  
                  <?php echo $content_bottom; ?>
                
                </div>
                      <?php if ($column_right) { ?>
                            <div class="col-xs-12 col-sm-3 col-md-3">
                                <?php echo $column_right; ?>
                            </div>
                         <?php } ?>
              </div>
          </div>
      </div>
  </div></div>
<?php echo $footer; ?>




