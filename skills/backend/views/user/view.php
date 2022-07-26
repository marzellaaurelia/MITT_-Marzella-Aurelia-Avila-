<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\User */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="row">
    <div class="col-lg-12">
        <div class="box box-aqua">
            <div class="box-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box-header">
                            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="user-view">
                                        
                                        <p>
                                            <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                                            <?= Html::a('Delete', ['delete', 'id' => $model->id], [
                                                'class' => 'btn btn-danger',
                                                'data' => [
                                                    'confirm' => 'Are you sure you want to delete this item?',
                                                    'method' => 'post',
                                                ],
                                            ]) ?>
                                        </p>

                                        <?= DetailView::widget([
                                            'model' => $model,
                                            'attributes' => [
                                                'id',
                                                'username',
                                                'name',
                                                'address:ntext',
                                                'age',
                                                // 'auth_key',
                                                // 'password_hash',
                                                // 'password_reset_token',
                                                'email:email',
                                                // 'status',
                                                // 'created_at',
                                                // 'updated_at',
                                                // 'verification_token',
                                            ],
                                        ]) ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>