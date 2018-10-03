<?php
/**
 * @project yii2-ckeditor-roxyfileman
 * @author  Nick Denry
 */
namespace nickdenry\ckeditorRoxyFileman\controllers;

use nickdenry\ckeditorRoxyFileman\helpers\FolderHelper;
use nickdenry\ckeditorRoxyFileman\models\UploadForm;
use nickdenry\ckeditorRoxyFileman\Module;
use Yii;
use yii\helpers\Url;
use yii\web\Controller;

/**
 * {@inheritDoc}
 */
class DefaultController extends Controller
{
    /**
     * Render a view
     *
     * @param $type
     *
     * @return string
     */
    public function actionIndex($type)
    {
        $this->layout = 'main';
        $module = Yii::$app->getModule('ckeditorRoxyFileman');
        $uploadForm = new UploadForm();
        $defaultFolder = '';
        $defaultOrder = FolderHelper::SORT_DATE_DESC;
        Yii::$app->cache->set('ckeditorRoxyFileman_file_type', $type);
        if ($module->rememberLastFolder && Yii::$app->cache->exists('ckeditorRoxyFileman_last_folder')) {
            $defaultFolder = Yii::$app->cache->get('ckeditorRoxyFileman_last_folder');
        }
        if ($module->rememberLastOrder && Yii::$app->cache->exists('ckeditorRoxyFileman_last_order')) {
            $defaultOrder = Yii::$app->cache->get('ckeditorRoxyFileman_last_order');
        }
        $fileListUrl = Url::to([
            '/ckeditorRoxyFileman/management/file-list',
            'folder' => $defaultFolder,
            'sort' => $defaultOrder,
        ]);
        return $this->render('index', [
            'module' => $module,
            'uploadForm' => $uploadForm,
            'fileListUrl' => $fileListUrl,
            'defaultOrder' => $defaultOrder,
            'defaultFolder' => $defaultFolder,
        ]);
    }
}
