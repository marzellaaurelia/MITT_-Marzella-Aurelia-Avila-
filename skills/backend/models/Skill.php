<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "skill".
 *
 * @property int $id
 * @property string|null $nameSkill
 */
class Skill extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'skill';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nameSkill'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nameSkill' => 'Name Skill',
        ];
    }
}
