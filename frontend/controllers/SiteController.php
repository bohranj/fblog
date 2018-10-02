<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use backend\models\Articles;
use backend\models\Categories;
use yii\data\Pagination;

class SiteController extends Controller {

    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex() {
        $query = Articles::find()->where('home = 1 and status = 1');
        $items = $query->limit(4)->all();

        $sidebar_items = Articles::find()->where('home != 1 and status = 1')->orderBy('published_date')->limit(2)->all();

        return $this->render('index', ['items' => $items, 'sidebar_items' => $sidebar_items ]);
    }

    // public function actionContact() {
    //     return $this->render('contact');
    // }
    // public function actionAbout() {
    //     return $this->render('about');
    // }

    public function actionArticle($alias = '') {

        $alias = Yii::$app->request->get('alias');

        if ($alias !== '') {
            $query = Articles::find()->where("alias = '" . $alias . "'");
            $article = $query->one();
            $sidebar_items = Articles::find()->where("status = 1 and alias !=  '". $alias ."' ")->orderBy('published_date')->limit(6)->all();
            $one_article = Articles::find()->where("status = 1 and home = 1 and alias !=  '". $alias ."' ")->orderBy('published_date')->limit(1)->one();
            if(!$article) {
                return $this->actionIndex();
            }
        } else {
            return $this->actionIndex();
        }

        return $this->render('article',['article' => $article, 'sidebar_items' => $sidebar_items, 'one_article' => $one_article]);
    }

    public function queriesHelper($id = '1') {
        $query = Articles::find()->where('category_id = "' . $id .'" and status = 1');

        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count()]);
        $items = $query->offset($pages->offset)->limit($pages->limit)->all();

        $sidebar_items = Articles::find()->where('category_id != "' . $id .'" and status = 1')->orderBy('published_date')->limit(2)->all();

        $category_name = Categories::find('title')->where('id = "' . $id .'"')->one();

        $arr = array();

        $arr['items'] = $items;
        $arr['pages'] = $pages;
        $arr['sidebar_items'] = $sidebar_items;
        $arr['category_name'] = $category_name;

        return $arr;

    }

    public function actionStyle() {

        $arr = $this->queriesHelper(1);

        return $this->render('category', [
            'items' => $arr['items'],
            'pages' => $arr['pages'],
            'sidebar_items' => $arr['sidebar_items'],
            'category_name' => $arr['category_name']
        ]);
    }


    public function actionHealthy() {

        $arr = $this->queriesHelper(2);

        return $this->render('category', [
            'items' => $arr['items'],
            'pages' => $arr['pages'],
            'sidebar_items' => $arr['sidebar_items'],
            'category_name' => $arr['category_name']
        ]);

    }

    public function actionBeauty() {
        $arr = $this->queriesHelper(3);

        return $this->render('category', [
            'items' => $arr['items'],
            'pages' => $arr['pages'],
            'sidebar_items' => $arr['sidebar_items'],
            'category_name' => $arr['category_name']
        ]);
    }

}
