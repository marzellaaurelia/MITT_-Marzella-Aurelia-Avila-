<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use frontend\models\Levelskill;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\LevelskillSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Skills';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-lg-12">
        <div class="box box-aqua">
            <div class="box-header">
                <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                <div class="pull-right">
                    <a class="btn btn-primary btn-sm" href="<?= Url::toRoute(['create']) ?>">Tambahkan Data</a>
                </div>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="levelskill-index">

                            <?= GridView::widget([
                                'dataProvider' => $dataProvider,
                                'filterModel' => $searchModel,
                                'columns' => [
                                    ['class' => 'yii\grid\SerialColumn'],

                                    'id',
                                    'id_skill',
                                    'level',
                                    [
                                        'class' => ActionColumn::className(),
                                        'urlCreator' => function ($action, Levelskill $model, $key, $index, $column) {
                                            return Url::toRoute([$action, 'id' => $model->id]);
                                        }
                                    ],
                                ],
                            ]); ?>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>