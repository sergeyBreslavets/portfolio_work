<?php echo $header; ?>
<div class="e-block e-block-centered e-block-skin hp-services" data-stellar-background-ratio="0.5">
             <div class="container">

                <div class="row">
                  <div class="col-sm-12">
                   <h3 class="font-accident-one-medium uppercase"><?php echo $text_my_account; ?></h3>
                  </div>
                </div>
                   <div class="row"> 


            <div class="col-md-9">

              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab" aria-expanded="true">Контактная информация</a></li>
                <li role="presentation" class=""><a href="#tab2" role="tab" data-toggle="tab" aria-expanded="false">Моя зачетка</a></li>
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade active in" id="tab1">
                 <h3 class="hidden title title-lg">Personal information</h3>
                                            <p class="hidden mb-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                            <dt>Имя</dt>
                                            <dd>
                                                <span class="pull-left"><?php echo $firstname?></span>
                                                <a href="<?php echo $edit; ?>" class="btn btn-xs btn-base btn-icon pull-right acount_edit"><span><i class="fa fa-pencil"></i> Редактировать</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Фамилия</dt>
                                            <dd>
                                                <span class="pull-left"><?php echo $lastname?></span>
                                                <a href="<?php echo $edit; ?>" class="btn btn-xs btn-base btn-icon  pull-right acount_edit"><span><i class="fa fa-pencil"></i> Редактировать</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Email</dt>
                                            <dd>
                                            <span class="pull-left"><?php echo $email?></span>
                                                <a href="<?php echo $edit; ?>" class="btn btn-xs btn-base btn-icon  pull-right acount_edit"><span><i class="fa fa-pencil"></i> Редактировать</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Телефон</dt>
                                            <dd>
                                                <span class="pull-left"><?php echo $telephone?></span>
                                                <a href="<?php echo $edit; ?>" class="btn btn-xs btn-base btn-icon  pull-right acount_edit"><span><i class="fa fa-pencil"></i> Редактировать</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Пароль</dt>
                                            <dd>
                                                <span class="pull-left">**********</span>
                                                <a href="<?php echo $password; ?>" class="btn btn-xs btn-base btn-icon  pull-right acount_edit"><span><i class="fa fa-pencil"></i> Редактировать</span></a>
                                            </dd>
                    <hr>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="tab2">
                    <h3 class="hidden title title-lg">My orders</h3>
                                        <p class=" hidden mb-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                    
                                    <table class="table table-orders table-bordered table-striped table-responsive no-margin table_style_acount">
                                        <thead>
                                            <tr>
                                                <th>Название теста</th>
                                                
                                                <th>Осталось попыток</th>

                                                <th>Результат</th>
                                                <th class="text-center">Баллы</th>
                                                <th class="text-right">Действия</th>
                                            </tr>
                                        </thead>
                                        <tbody>    
                                            <?php if( !empty($quizs)  ) { foreach ($quizs as $qv) { ?>
                                               <tr>
                                                    <td><?php echo $qv['quiz_title']; ?></td>
                                                    <td class="text-center"><?php echo $qv['quiz_count_attempts']; ?></td>
                                                    <td><strong><?php echo $qv['quiz_status_text']; ?></strong></td>
                                                    <td class="text-center"><strong><?php echo ($qv['quiz_balls'] > 0)?$qv['quiz_balls']:''; ?></strong></span></td>
                                                    <td>
                                                    <?php if(!empty($qv['quiz_action'])){ ?>
                                                        <a href="<?php echo $qv['quiz_action']['quiz_view']; ?>" class="btn btn-b-base btn-block bnt_table"><?php echo $qv['quiz_action']['quiz_text_btn']; ?></a>
                                                    <?php } ?>
                                                    </td>
                                                </tr> 
                                            <?php } }?>
                                            
                                            <?php ?>

                                            <?php if($promocode){ ?> 
                                            <tr>
                                                <td colspan="3" class="text-right">Баллы за промокоды</td>
                                                <td class="text-center"><strong><?php echo $promocode; ?></strong></td>
                                                <td></td>
                                            </tr>
                                            <?php }?> 
                                            <tr>
                                                <td colspan="3" class="text-right"><strong>Ваш результат</strong></td>
                                               <td class="text-center"><strong><?php echo $total; ?></strong></td>
                                                <td></td>
                                            </tr>

                                        </tbody>
                                    </table>
                </div>
              </div>
              <!-- /Tabs -->

            </div>
              <div class="col-md-3">
                        <div class="user-profile-img">
                          <img src="<?php echo $avatar; ?>" alt="" id="i-account_image">
                         <input type="hidden" name="image" value="<?php echo $avatar; ?>" />
                        </div>
                        <div class="mt-20">
                          <a href="#" class="btn btn-base btn-block acount_edit" data-toggle="image" id="account_image"><i class="fa fa-pencil"></i> Сменить аватар</a>
                        </div>
                       
                    </div>
                   </div>


               
            </div>
     </div>

    

<?php echo $column_left; ?>
<?php echo $column_right; ?>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>