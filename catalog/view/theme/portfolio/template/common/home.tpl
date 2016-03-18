<?php echo $header; ?>
<?php echo $content_top; ?>

       <div class=main>
        <section class="module pb-0" id=portfolio>
            <div class=container>
                <div class=row>
                    <div class=col-sm-12>
                        <ul id=filters class="filter font-alt hidden-xs">
                            <li><a href=# data-filter=* class="current wow fadeInUp">Показать все</a></li>
                            <li><a href=# data-filter=.website  class="wow fadeInUp" data-wow-delay=0.2s>Сайты</a></li>
                            <li><a href=# data-filter=.game class="wow fadeInUp" data-wow-delay=0.4s>Игры</a></li>
                            <li><a href=# data-filter=.promotions class="wow fadeInUp" data-wow-delay=0.6s>Промо</a></li>
                            <li><a href=# data-filter=.webdesign class="wow fadeInUp" data-wow-delay=0.8s>Приложения</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <?php if(!empty($informations)){ ?> 
            <ul id=works-grid class="works-grid works-grid-3 works-hover-w">  
 
                  
                      <?php foreach ($informations as $infoval) { ?>
                <li class="work-item illustration webdesign <?php echo $infoval['type_project']; ?> ">
                    <a href='<?php echo $infoval['information_href']; ?>'>
                        <div class=work-image><img src='<?php echo $infoval['image']; ?>'></div>
                        <div class="work-caption font-alt">
                            <h3 class=work-title><?php echo $infoval['title']; ?></h3>
                            <div class=work-descr><?php echo $infoval['sub_description']; ?></div>
                        </div>
                    </a>
                </li>

                      <?php } ?>

            </ul>
         <?php } ?>
        </section>
        <div class="module-small bg-dark" id=contact>
            <div class=container>
                <div class=row>
                    <div class=col-sm-3>
                        <div class=widget>
                            <h5 class="widget-title font-alt">Контакты</h5>
                            <p>Phone: +1 234 567 89 10
                                <br>Fax: +1 234 567 89 10</p>
                            <p>Адрес: Неизвестный город ул Неизвестного д 0</p>
                            <p>Email: <a href=#>somecompany@example.com</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class=divider-d>
<?php echo $footer; ?>