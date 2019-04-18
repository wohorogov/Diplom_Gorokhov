<?php

namespace app\controllers;

use app\models\Profile;
use Yii;
use yii\base\Model;
use yii\web\Controller;
use app\models\Signup;
use app\models\Login;

class SiteController extends Controller
{
    public function actionIndex()
    {
        //var_dump(Yii::$app->user->identity);die();
        return $this->render('index');
    }

    public function actionLogout()
    {
        if (!Yii::$app->user->isGuest)
        {
            Yii::$app->user->logout();
            return $this->redirect(['login']);
        }
    }
    public function actionSignup()
    {
        $model = new Signup();

        if(isset($_POST['Signup']))
        {
            $model->attributes=Yii::$app->request->post('Signup');
            if($model->validate() && $model->signup())
            {
                return $this->render('login');
            }
        }
        return $this->render('signup',['model'=> new $model]);
    }

    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $login_model = new Login();

        if (Yii::$app->request->post('Login')) {
            $login_model->attributes = Yii::$app->request->post('Login');

            if ($login_model->validate()) {
                Yii::$app->user->login($login_model->getUser());
                return $this->render('profile');
            }
        }
        return $this->render('login', ['login_model' => $login_model]);
    }

    public function actionProfile()
    {
        return $this->render('profile');
    }

}
