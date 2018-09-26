<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "articles".
 *
 * @property int $id
 * @property string $title
 * @property string $body
 * @property string $alias
 * @property string $published_date
 * @property int $status
 * @property int $views
 * @property int $category_id
 *
 * @property Categories $category
 */
class Articles extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'articles';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'body', 'alias', 'status', 'views', 'category_id'], 'required'],
            [['body'], 'string'],
            [['published_date'], 'safe'],
            [['status', 'home','views', 'category_id'], 'integer'],
            [['title', 'alias'], 'string', 'max' => 250],
            [['alias'], 'unique'],
            [['category_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categories::className(), 'targetAttribute' => ['category_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'body' => 'Body',
            'alias' => 'Alias',
            'published_date' => 'Published Date',
            'status' => 'Status',
            'home' => 'Home',
            'views' => 'Views',
            'category_id' => 'Category ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Categories::className(), ['id' => 'category_id']);
    }
}
