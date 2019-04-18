<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Person */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="person-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ID_person')->textInput() ?>

    <?= $form->field($model, 'Full_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Date_of_birth')->textInput() ?>

    <?= $form->field($model, 'Place_of_birth')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'live')->textInput() ?>

    <?= $form->field($model, 'photo')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'ID_family')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
