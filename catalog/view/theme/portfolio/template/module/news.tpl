<!-- CATEGORY NEWS -->
<div class="section-title-wr">
     <h3 class="font-accident-one-medium uppercase"><?php echo $heading_title; ?></h3>
    
</div>
   <div class="dividewhite1"></div>
<?php $i = 1; ?>
	<?php foreach ($all_news as $news) { ?>
		<?php if($i == 1) { ?>

 <div class=" infoblock">
                    <hr>
                    <a href="<?php echo $news['view']; ?>"><img src="<?php echo $news['image']['h']; ?>" class="img-responsive" alt="x"></a>
                    <div class="dividewhite1"></div>
                    <h6 class="font-accident-two-oblique"><a href="<?php echo $news['view']; ?>"><?php echo $news['full_title']; ?></a></h6>
                    <!-- <p>
                     <?php echo $news['short_description']; ?>
                    </p>
 -->                        <a role="button" href="<?php echo $news['view']; ?>" class="btn btn-default  btn-gr btn-block 
bnt_more_sq">Подробнее</a>
                            
 </div>
<?php } else { ?>
 <div class=" infoblock">
    <hr>
                    <a href="<?php echo $news['view']; ?>"><img src="<?php echo $news['image']['h']; ?>" class="img-responsive" alt="x"></a>
                    <div class="dividewhite1"></div>
                      <h6 class="font-accident-two-oblique"><a href="<?php echo $news['view']; ?>"><?php echo $news['full_title']; ?></a></h6>
                    <!-- <p>
                     <?php echo $news['short_description']; ?>
                    </p>
 -->                        <a role="button" href="<?php echo $news['view']; ?>" class="btn  btn-default btn-gr btn-block 
bnt_more_sq">Подробнее</a>

</div>

         	<?php } ?>
		
	    <?php $i++; ?>
	<?php } ?>           
 