<div id="homepageCarousel" class="carousel carousel-1 slide" data-ride="carousel">
  <div class="carousel-inner">
  <?php $i= 0;?>
    <?php foreach ($banners as $banner) { ?>
      <div class="item item-dark <?php echo ($i==0)?'active':''; ?> ">
        <?php if ($banner['link']) { ?>
        <a href="<?php echo $banner['link']; ?>">
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"/>
            <!-- Carousel caption -->
            <div class="caption-bottom">
                <span class="title c-white"><?php echo $banner['title']; ?></span>
                <span class="subtitle"></span>
            </div>
        </a>
      <?php } else { ?>
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
            <!-- Carousel caption -->
            <div class="caption-bottom">
                <span class="title c-white"><?php echo $banner['title']; ?></span>
                <span class="subtitle"></span>
            </div>
        <?php } ?>
      </div>
       <?php $i= 1;?>
    <?php } ?>    
  </div>
     <!-- Left and right controls -->
    <a class="left carousel-control" href="#homepageCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#homepageCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>




