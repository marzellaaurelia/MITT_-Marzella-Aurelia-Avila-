<?php

use backend\models\Masterlevel;
use backend\models\Skill;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model frontend\models\Levelskill */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="levelskill-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_skill')->dropDownList(ArrayHelper::map(Skill::find()->all(), 'id', 'nameSkill'), [
        'prompt' => '-- Pilih Skill --'
    ]) ?>

    <?= $form->field($model, 'level')->dropDownList(ArrayHelper::map(Masterlevel::find()->all(), 'id', 'level'), [
        'prompt' => '-- Pilih Level --'
    ]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>