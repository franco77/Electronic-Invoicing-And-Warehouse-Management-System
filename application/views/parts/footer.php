<div class="footer">
    <div class="extra">
        <div class="extra-inner">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <h4><?= lang('support_footer') ?></h4>
                        <ul>
                            <li><a href="mailto:support@pamticket.com">support@pamticket.com</a> - 24/7</li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h4><?= lang('support_questions') ?></h4>
                        <ul>
                            <li>
                                <a href="<?= lang_url('help') ?>"><?= lang('help_footer') ?></a>
                            </li>
                        </ul>
                    </div> 
                    <div class="col-sm-3">
                        <h4><?= lang('support_menu') ?></h4>
                        <ul>
                            <li><a href="<?= lang_url('registration') ?>"><?= lang('registration') ?></a></li>
                            <li><a href="<?= lang_url('login') ?>"><?= lang('login') ?></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <h4><?= lang('payment_methods') ?></h4>
                        <div class="payments"> 
                            <img src="<?= base_url('assets/public/imgs/paypal-payment.png') ?>" alt="pminvoice.com paypal payment">
                            <img src="<?= base_url('assets/public/imgs/sms-payment.png') ?>" alt="pminvoice.com sms payment">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="bottom-inner">
            <div class="container">
                <span>pminvoice.com© <?= date('Y') ?></span>
            </div>
        </div>
    </div>
</div> 
</div>
</div>
<?php if (uri_string() != 'registration') { ?>
    <div class="modal fade" id="modalRegister" tabindex="-1" role="dialog" aria-labelledby="modalRegister">
        <div class="modal-dialog" role="document">
            <div class="modal-content"> 
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel"><?= lang('registration_modal') ?></h4>
                </div>
                <div class="modal-body">
                    <form class="form-registration" method="POST" action="<?= lang_url('registration') ?>" id="registerMe">
                        <div class="form-group">
                            <label for="user_email"><?= lang('reg_email') ?></label><sup class="err-email"></sup>
                            <input type="text" name="email" id="user_email" placeholder="<?= lang('reg_p_email') ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="user_password"><?= lang('reg_pass') ?></label><sup class="err-password"></sup>
                            <input type="password" id="user_password" name="password" placeholder="<?= lang('reg_p_secret') ?>" class="form-control">
                        </div>
                        <a href="<?= lang_url('rules') ?>" target="_blank"><?= lang('read_rules') ?></a>
                        <div class="checkbox">
                            <label><input type="checkbox" id="user_rules" <?= $this->session->flashdata('rules') != null ? 'checked' : '' ?> name="rules" value=""><?= lang('confirm_rules') ?><sup class="err-rules"></sup></label>
                        </div> 
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?= lang('close') ?></button>
                    <button type="button" class="btn btn-orange" onclick="registerValidate()"><?= lang('register_me') ?></button>
                </div> 
            </div>
        </div>
    </div>
<?php } ?>
<script src="<?= base_url('assets/jquery/jquery.min.js') ?>"></script>
<script src="<?= base_url('assets/public/js/general.js') ?>"></script> 
<script src="<?= base_url('assets/plugins/placeholders.min.js') ?>"></script>
<script src="<?= base_url('assets/bootstrap/js/bootstrap.min.js') ?>"></script>          
</body>
</html>