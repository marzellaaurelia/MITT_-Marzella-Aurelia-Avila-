<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "levelskill".
 *
 * @property int $id
 * @property int $id_skill
 * @property string|null $level
 */
class Levelskill extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'levelskill';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_skill'], 'required'],
            [['id_skill'], 'integer'],
            [['level'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_skill' => 'Skill',
            'level' => 'Level',
        ];
    }
}
