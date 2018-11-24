<?php

namespace app\models;

use yii\base\Model;

class Signup extends Model
{
    public $name;
    public $password;

    public function rules()
    {
        return [
            [['name', 'password'], 'required'],
            ['name' , 'unique', 'targetClass' => 'app\models\User'],
            ['password', 'string', 'min' => 2, 'max' => 100]
        ];
    }

    public function signup()
    {
        $user = new User();
        $user->name = $this->name;
        //$user->password = sha1($this->password);
        $user->SetPassword($this->password);
        return $user->save();
    }
}