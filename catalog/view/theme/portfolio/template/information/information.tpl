<?php echo $header; ?>
<?php echo $content_top; ?>
<!-- Home start -->
  <section class="home-section home-parallax home-fade home-full-height bg-dark-60" data-background="image/<?php echo $image; ?>">

    <div class="hs-caption">
      <div class="caption-content">
        <div class="font-alt mb-30">
         
        </div>
        <div class="hs-title-size-3 font-alt mb-30">
          <?php echo $heading_title; ?>
        </div>
        <div class="font-serif "> 
          <p><?php echo $sub_description; ?></p>
        </div>
      </div>
    </div>

  </section >
  <!-- Home end -->

  <!-- Wrapper start -->
  <div class="main">

    <!-- Portfolio single start -->
    <section class="module">
      <div class="container">

        <div class="row">

          <div class="col-sm-12 col-md-12 col-lg-12">
             <h4 class="font-alt mb-0"> <?php echo $heading_title; ?></h4>
             <hr class="divider-w mt-10 mb-20">
            <?php echo $description; ?>
  
          </div><!-- .row -->
            
      </div>
      </div>
      </section>
 <?php if(!empty($information_to_downloads)){ ?>
<section class="module-small bg-dark">
      <div class="container">
 <?php foreach ($information_to_downloads as $itd) { ?>  
        <div class="row">
       
          <div class="col-sm-6 col-md-6 col-lg-4 col-lg-offset-2">

            <div class="callout-text font-alt">
              <h3 class="callout-title"><?php echo $itd['name']; ?></h3>
            
            </div>

          </div>

          <div class="col-sm-6 col-md-6 col-lg-4">

            <div class="callout-btn-box">
<a role="button" href="<?php echo $itd['href']; ?>" target="_blank" class="btn btn-g btn-round">Скачать  <?php echo $itd['size']; ?></a>


            </div>

          </div>

        </div><!-- .row -->
 <?php } ?>

      </div>
    </section>
<?php }?>  



<?php echo $content_bottom; ?>
                         

<?php echo $footer; ?>
