<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="before-carousel"><?= lang('reg_for_free_use_for') ?></div>
<div id="carousel-main">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div id="slide-1" class="item active">
                <div class="carousel-caption">
                    <div class="pull-left left-side">
                        <span><?= lang('home_slide_tx1') ?> <span class="shadows-font"><?= lang('home_slide_free') ?></span></span>
                        <h1><?= lang('electronic_invoices') ?></h1>
                        <a href="<?= base_url('features') ?>"><?= lang('check_our_options') ?></a>
                        <img alt="pmTicket arrow" class="hand-made-arrow  hidden-xs" src="<?= base_url('assets/public/imgs/hand-made-arrow.png') ?>">
                        <img alt="pmTicket arrow" class="hand-made-cicle" src="<?= base_url('assets/public/imgs/hand-made-cicle.png') ?>">
                        <a href="javascript:void(0);" data-toggle="modal" data-target="#modalRegister" class="shadows-font down">
                            <h4><?= lang('home_slide_register_now') ?></h4>
                        </a>
                    </div>
                    <img class="pull-right img-responsive mac hidden-xs" alt="pminvoice.com" src="<?= base_url('assets/public/imgs/first-mac.png') ?>">
                </div>
            </div>
            <div id="slide-2" class="item">
                <div class="carousel-caption">
                    <div class="pull-left left-side">
                        <img alt="pmTicket arrow" class="hand-made-down" src="<?= base_url('assets/public/imgs/handmade-arrow-down.png') ?>">
                        <img alt="pmTicket arrow" class="hand-made-cicle" src="<?= base_url('assets/public/imgs/hand-made-cicle.png') ?>">
                        <h3 class="shadows-font use-it"><?= lang('use_it_online') ?></h3>
                        <p>
                            <?= lang('there_is') ?> <span><?= lang('no_need') ?></span> <?= lang('to_down_noth') ?><br> 
                            <?= lang('high_protect_serve') ?> <br> 
                            <?= lang('have_support') ?> <span><?= lang('every_day_and_hour') ?></span>.
                        </p>
                    </div>
                    <div class="pull-right right-side-ca-2 hidden-xs">
                        <img src="<?= base_url('assets/public/imgs/el_invoice_img.png') ?>" class="img-responsive el-invoices-img" alt="electronic invoices pminvoice.com">
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div id="after-carousel">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <p><?= lang('text_register_after_carousel') ?> <em class="shadows-font"><?= lang('text_free_after_carousel') ?></em> <?= lang('text_account_after_carousel') ?></p>
                <span><?= lang('text_bottom_after_carousel') ?></span>
            </div>
            <div class="col-sm-4 right-side">
                <a href="javascript:void(0);" data-toggle="modal" data-target="#modalRegister" class="btn btn-orange uppercase pull-right"><?= lang('register_now') ?></a>
            </div>
        </div>
    </div>
</div>
<div class="feature-badges">
    <div class="container">
        <ul class="icons-features">
            <li>
                <a href="<?= lang_url('features') ?>">
                    <img src="<?= base_url('assets/public/imgs/flat-icons/accounts.png') ?>" alt="">
                    <span><?= lang('one_acc') ?></span>
                </a>
            </li>
            <li>
                <a href="<?= lang_url('features') ?>">
                    <img src="<?= base_url('assets/public/imgs/flat-icons/email.png') ?>" alt="">
                    <span><?= lang('send_by_email') ?></span>
                </a>
            </li>
            <li><a href="<?= lang_url('features') ?>">
                    <img src="<?= base_url('assets/public/imgs/flat-icons/pdf-flat.png') ?>" alt="">
                    <span><?= lang('down_pdf') ?></span>
                </a>
            </li>
            <li>
                <a href="<?= lang_url('features') ?>">
                    <img src="<?= base_url('assets/public/imgs/flat-icons/sign.png') ?>" alt="">
                    <span><?= lang('invent_store') ?></span>
                </a>
            </li>
            <li>
                <a href="<?= lang_url('features') ?>">
                    <img src="<?= base_url('assets/public/imgs/flat-icons/support.png') ?>" alt="">
                    <span><?= lang('24_support') ?></span>
                </a>
            </li>
            <li>
                <a href="<?= lang_url('features') ?>">
                    <img src="<?= base_url('assets/public/imgs/flat-icons/template.png') ?>" alt="">
                    <span><?= lang('inv_templates') ?></span>
                </a>
            </li>
        </ul>
    </div>
</div>
<div class="before-carousel"><?= lang('issue_to_5') ?></div>
<div class="container">
    <div class="intro">
        <h2 class="text-center"><?= lang('what_is') ?><span class="orange-gradient">InvoicePro</span> <?= lang('and_how_it_works') ?></h2>
        <div class="deliver"></div>
        <div>
            <?= $homeOne ?>
        </div>
    </div>
    <hr>
    <div id="become-member">
        <h2 class="text-center"><?= lang('become_member_in_3') ?></h2>
        <div class="text-center">
            <img src="<?= base_url('assets/public/imgs/customers-label.png') ?>" alt="200+ customers">
        </div>
        <div class="deliver"></div>
        <img src="<?= base_url('assets/public/imgs/home_steps.jpg') ?>" class="img-responsive" alt="Registration steps in pmticket.com">
    </div>
    <hr> 
    <div class="intro">
        <h2 class="text-center"><?= lang('specifications') ?></h2>
        <div class="deliver"></div>
        <div>
            <?= $homeSpecifications ?>
        </div>
    </div>
    <hr>
    <div class="intro">
        <h2 class="text-center"><?= lang('security') ?></h2>
        <div class="deliver"></div>
        <div>
			<div class="text-center">
			    <img src="<?= base_url('assets/public/imgs/ssl_enc.jpg') ?>" alt="SSL Encrypted">
				<img src="<?= base_url('assets/public/imgs/backups.jpg') ?>" alt="SSL Encrypted">
			</div>
            <?= $homeSecurity ?>
        </div>
    </div>
    <hr>
    <div id="carousel-blog">
        <h2 class="text-center"><?= lang('comming_features') ?></h2> 
        <div class="deliver"></div>
        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
            <ol class="carousel-indicators">
                <?php
                $num_articles = count($last_articles);
                for ($s = 0; $s <= $num_articles - 1; $s++) {
                    ?>
                    <li data-target="#quote-carousel" data-slide-to="<?= $s ?>" <?= $s == 0 ? ' class="active"' : '' ?>></li>
                <?php } ?>
            </ol>
            <div class="carousel-inner">
                <?php
                $i = 0;
                foreach ($last_articles as $article) {
                    ?>
                    <div class="item <?= $i == 0 ? 'active' : '' ?>">
                        <blockquote>
                            <div class="row">
                                <div class="col-sm-3 text-center">
                                    <div class="text-center date-body">
                                        <label class="date-title"><?= date('F/Y', $article['time']) ?></label>
                                        <div class="date-content">
                                            <p class="dia"><?= date('m', $article['time']) ?></p>
                                            <hr class="nomargin"/>
                                            <p class="nomargin"><strong><?= lang('published') ?></strong></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-9">
                                    <p><i class="fa fa-quote-left" aria-hidden="true"></i> <a href="<?= lang_url('blog/' . $article['url']) ?>"><?= character_limiter($article['title'], 50) ?></a></p>
                                    <small><?= character_limiter(strip_tags($article['description']), 80) ?></small>
                                </div>
                            </div>
                        </blockquote>
                    </div>
                    <?php
                    $i++;
                }
                ?>
            </div>
            <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
            <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
        </div>      
    </div>
</div>
<p class="trusted-us"><?= lang('trusted_us') ?></p>