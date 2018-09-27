<?php
namespace frontend\controllers;

use Yii;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use backend\models\Articles;
use backend\models\Categories;

class SiteController extends Controller {

    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex() {
        $query = Articles::find()->where('home = 1');
        $items = $query->limit(4)->all();

        return $this->render('index', ['items' => $items, 'cat' => '']);
    }

    public function actionArticle($alias)
    {
        $this->render('view',array(
            'model'=>$this->loadModelSlug($alias),
        ));
    }

    public function loadModelSlug($slug)
    {
        $model = Articles::model()->findByAttributes(array('alias'=>$alias));
        if($model===null)
            throw new CHttpException(404,'The requested page does not exist.');
        return $model;
    }

    // public function actionArticle($alias) {
    //     if ($alias !== '') {
    //         $query = Articles::find()->where('alias = ' . $alias);
    //         $article = $query->one();
    //     } else {
    //         return $this->actionIndex();
    //     }
    //
    //     return $this->render('article',['article' => $article]);
    // }

    public function actionAbout() {
        return $this->render('about');
    }

    public function actionArchive() {
        return $this->render('archive');
    }

    // public function actionContact()
    // {
    //     $model = new ContactForm();
    //     if ($model->load(Yii::$app->request->post()) && $model->validate()) {
    //         if ($model->sendEmail(Yii::$app->params['adminEmail'])) {
    //             Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
    //         } else {
    //             Yii::$app->session->setFlash('error', 'There was an error sending your message.');
    //         }
    //
    //         return $this->refresh();
    //     } else {
    //         return $this->render('contact', [
    //             'model' => $model,
    //         ]);
    //     }
    // }

}
