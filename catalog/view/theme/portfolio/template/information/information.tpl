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
                  <div class="post-item  infoblock">
                       
              
                              
  <h2 class="font-accident-one-bold uppercase wow fadeIn"><?php echo $heading_title; ?></h2>

                      <hr class="mt-29">

                          <div class="post-content">  
                        

                              <span class="post-author hidden">WRITTEN BY <a href="#" hidefocus="true" style="outline: none;">James Franco</a></span>
                              <div class="post-tags hidden">Posted in <a href="#" hidefocus="true" style="outline: none;">HOTELS</a>, <a href="#" hidefocus="true" style="outline: none;">SPECIAL PROMOS</a>, <a href="#" hidefocus="true" style="outline: none;">SUMMER</a></div>
                              <div class="clearfix hidden"></div>
                              <div class="post-desc text_post">

                               <?php echo $description; ?>
                              </div>
                          </div>

                       <div class="dividewhite2"></div>
                   <!--- foreach information_to_downloads-->
                      <?php if(!empty($information_to_downloads)){ ?>

                                   <!-- Logos Block  -->
        <div class="logos e-block  e-bg-light e-bg-light-texture" data-stellar-background-ratio="0.5">
            <!-- Decorative arrow -->
            <div class="down-arrow wow fadeIn">&nbsp;</div>
            <!-- /Decorative arrow -->
            <div class="dividewhite2"></div>
            
           


   <div class="row">
      <?php foreach ($information_to_downloads as $itd) { ?>
    <div class=" infoblock logos-item wow fadeIn">
        

           <div class="col-xs-8"> 
           <h4 class="font-accident-one-medium"><?php echo $itd['name']; ?> </h4>
                                
            </div>
           <div class="col-xs-4">
          <!--     <a class="btn btn-b-white btn-lg pull-right " target="_blank" title="" href="<?php echo $itd['href']; ?>">Прочитать <?php echo $itd['size']; ?></a> -->
              <a role="button" href="<?php echo $itd['href']; ?>" target="_blank" class=" btn btn-lg btn-gr">Прочитать  <?php echo $itd['size']; ?></a>

        </div>
       

      <?php } ?>
                          
</div>



            </div>
 </div>
        <?php }?>  
        <!-- /Logos Block -->



                         
                          <!--- foreach information_to_downloads-->
                          <?php if($quiz_id){ ?>
                            <div class="wp-example" id="box-elements">
                                <div class="box-element base">
                                  <div class="row">
                                    <div class="col-md-8">
                                        <h4>Пройти тест: <?php echo $quiz_title; ?></h4>
                                    </div>
                                    <div class="col-md-4">
                                        <a class="btn btn-b-white btn-lg pull-right" title="" href="<?php echo $quiz_href; ?>">Пройти тест</a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                          <?php }?>

                          
                          <?php echo $content_bottom; ?>
                         

                   
                       
                      
                      </div>

                  
                  
                </div>

            
                         <?php if ($column_right) { ?>
                            <div class="col-xs-12 col-sm-3 col-md-3">
                                <?php echo $column_right; ?>
                            </div>
                         <?php } ?>
              </div>
          </div>
      </div>
</div> 
<?php echo $footer; ?>