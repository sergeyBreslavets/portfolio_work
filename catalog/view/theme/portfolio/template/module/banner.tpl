<section class="slider">
   
        <div id="carousel-main" class="carousel slide" data-ride="carousel">
            <!-- Indicators --> 
             <ol class="carousel-indicators hidden-xs">
    <?php $k= 0;?>
    <?php foreach ($banners as $banner) { ?>
                <li data-target="#carousel-main" data-slide-to="$k" class="<?php echo ($k==0)?'active':''; ?>"></li>
    <?php $k= $k+1;?>
    <?php } ?> 

            </ol>
             <div class="carousel-inner" role="listbox">
    <?php $i= 0;?>
    <?php foreach ($banners as $banner) { ?>
           
            <!-- Wrapper for slides -->
           
                <div class="item <?php echo ($i==0)?'active':''; ?>">
                    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
                    <div class="carousel-caption slider__caption">
                        <div class="row">
                            <div class=" col-xs-12 col-sm-12 col-md-12">
                           <!--  <?php echo $banner['title']; ?> -->
                                <span class="slider__caption__number">45 </span> <span class="slider__caption__title"> сеансов  </span>
                                <br>
                                <span class="slider__caption__subtext">обработки звонков <br>
              одновременно</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3   col-md-4 col-md-offset-4 ">
                                <a href="<?php echo $banner['link']; ?>" class="bnt btn_red btn-block btn_slider ">Узнать больше...</a> </div>
                        </div>
                    </div>
                </div>

    <?php $i= 1;?>
    <?php } ?> 
       
            

            </div>
            <!-- Controls -->
            <a class="left carousel-control slider__control" href="#carousel-main" role="button" data-slide="prev">
                <img src="assets/images/service/left.png" alt="">
            </a>
            <a class="right carousel-control slider__control" href="#carousel-main" role="button" data-slide="next">
                <img src="assets/images/service/rigth.png" alt="">
            </a>
        </div>
    </section>