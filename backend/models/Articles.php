<?php

namespace backend\models;

use Yii;

class Articles extends \yii\db\ActiveRecord {

    public $fileImage;

    public static function tableName() {
        return 'articles';
    }

    public function rules() {
        return [
            [['title', 'body', 'alias', 'status', 'views', 'category_id'], 'required'],
            [['body', 'imageurl'], 'string'],
            [['published_date'], 'safe'],
            [['status', 'views', 'home', 'category_id'], 'integer'],
            [['title', 'alias', 'subtitle'], 'string', 'max' => 250],
            [['alias'], 'unique'],
            [['category_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categories::className(), 'targetAttribute' => ['category_id' => 'id']],
        ];
    }

    public function attributeLabels() {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'subtitle' => 'SubTitle',
            'body' => 'Body',
            'alias' => 'Alias',
            'published_date' => 'Published Date',
            'status' => 'Status',
            'views' => 'Views',
            'home' => 'Home',
            'category_id' => 'Category ID',
            'imageurl' => 'Image',
        ];
    }

    public function getCategory() {
        return $this->hasOne(Categories::className(), ['id' => 'category_id']);
    }
}
