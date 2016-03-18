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
  <section class="slice bg-white">
      <div class="wp-section">
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
                  <div class="post-item">
                          
                          <div class="post-content">
                              <h1 class="section-title left"><?php echo $heading_title; ?></h1>
                              <span class="post-author hidden">WRITTEN BY <a href="#" hidefocus="true" style="outline: none;">James Franco</a></span>
                              <div class="post-tags hidden">Posted in <a href="#" hidefocus="true" style="outline: none;">HOTELS</a>, <a href="#" hidefocus="true" style="outline: none;">SPECIAL PROMOS</a>, <a href="#" hidefocus="true" style="outline: none;">SUMMER</a></div>
                              <div class="clearfix hidden"></div>
                              <div class="post-desc">
                               <?php echo $description; ?>
                              </div>
                          </div>
                          <!--- foreach information_to_downloads-->
                          <?php if(!empty($information_to_downloads)){ ?>

                          <hr>
                            <?php foreach ($information_to_downloads as $itd) { ?>
                               <div class="wp-example" id="box-elements">
                                <div class="box-element base">
                                  <div class="row">
                                    <div class="col-md-8">
                                        <h4><?php echo $itd['name']; ?></h4>
                                    </div>
                                    <div class="col-md-4">
                                        <a class="btn btn-b-white btn-lg pull-right" target="_blank" title="" href="<?php echo $itd['href']; ?>">Прочитать <?php echo $itd['size']; ?></a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            <?php } ?>
                          <?php }?>
                         
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
  </section>
<?php echo $footer; ?>