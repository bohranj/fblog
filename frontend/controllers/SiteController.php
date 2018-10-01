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

    public function actionArticle($alias = '') {

        $alias = Yii::$app->request->get('alias');

        if ($alias !== '') {
            $query = Articles::find()->where("alias = '" . $alias . "'");
            $article = $query->one();
            if(!$article) {
                return $this->actionIndex();
            }
        } else {
            return $this->actionIndex();
        }

        return $this->render('article',['article' => $article]);
    }

    public function actionAbout() {
        return $this->render('about');
    }

    public function actionHealthy() {

        $query = Articles::find()->where('category_id = 1 and status = 1');
        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count()]);
        $items = $query->offset($pages->offset)->limit($pages->limit)->all();

        $sidebar_items = Articles::find()->where('category_id != 1 and status = 1')->orderBy('published_date')->limit(2)->all();

        return $this->render('healthy', [
            'items' => $items,
            'pages' => $pages,
            'sidebar_items' => $sidebar_items
        ]);
    }

}
