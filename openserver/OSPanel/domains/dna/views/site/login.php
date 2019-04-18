<h1>Login</h1>
<?php
use yii\widgets\ActiveForm;
?>
<?php $form = ActiveForm::begin();?>

<?= $form->field($model,'email')->textInput(['autofocus'=>true])?>

<?= $form->field($model,'password')->passwordInput()?>

<div>
    <button class="btn btn-success" type="submit">Login</button>
</div>

<?php $form = ActiveForm::end()?>