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
  <div id="content">
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
                  <div class="post-item">

                  <div class="post-content infoblock">
                    <h3 class="font-accident-one-medium uppercase"> <?php echo $heading_title; ?> </h3>
                    <div class="clearfix hidden"></div>
                  
                    <div class="box-element base">
                      <div class="row">
                          <div class="col-md-8 text-left">
                              <h5 >
                                   <?php echo $place_address; ?>
                              </h5>
                          </div>
                          <div class="col-md-4">
                          <h5>
                              <?php echo $place_date; ?>
                              </h5>
                          </div>
                      </div>
                  </div>
                     <hr>

                    <div class="post-desc text-left">
                     <?php echo $description; ?>
                    </div>
                </div>
                      
                  </div>

                  
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
</div>

<?php echo $footer; ?>
