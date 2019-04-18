<?php

namespace app\controllers;

use app\models\Profile;
use Yii;
use yii\base\Model;
use yii\web\Controller;
use app\models\Signup;
use app\models\Login;

class ProfileController extends Controller
{
    public function actionProfile()
    {
        return $this->render('profile');
    }

}
