<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PersonCreate */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="person-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'ID_person') ?>

    <?= $form->field($model, 'Full_name') ?>

    <?= $form->field($model, 'Date_of_birth') ?>

    <?= $form->field($model, 'Place_of_birth') ?>

    <?= $form->field($model, 'live') ?>

    <?php // echo $form->field($model, 'photo') ?>

    <?php // echo $form->field($model, 'ID_family') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
