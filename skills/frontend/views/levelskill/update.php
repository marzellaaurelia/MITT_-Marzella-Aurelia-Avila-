<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Levelskill */

$this->title = 'Update Levelskill: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Levelskills', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="levelskill-update">

                            <?= $this->render('_form', [
                                'model' => $model,
                            ]) ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>