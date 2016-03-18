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
                  <div class="section-title-wr">
                     <h3 class="font-accident-one-medium uppercase"> <?php echo $heading_title; ?></h3>
                  </div>

                  <div class="row multi-columns-row">
                    <div class="col-md-12">
                      <div class="widget">
                        <form action="" class="sky-form">
                           <input type="text" id="calendarDateField" style="display: none;">          
                            <div id="dpInlineBig"></div>
                        </form> 
                      </div>
                      <div class="topics">
                        <div class="row" id="calendarListData">
                        </div>
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
