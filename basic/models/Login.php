<?php

namespace app\models;

use yii\base\Model;

class Login extends Model
{
    public $name;
    public $password;

    public function rules()
    {
        return[
            [['name', 'password'], 'required'],
            ['password', 'validatePassword']
        ];
    }

    public function validatePassword($attribute, $params)
    {
        if ($this->hasErrors())
        {
            $user = $this->getUser();
            if (!$user || !($user->validatePassword($this->password)))
            {
                $this->addError($attribute,'Пароль или пользователь введены неверно');
            }
        }
    }

    public function getUser()
    {
        return User::findOne(['name'=>$this->name]);
    }


}