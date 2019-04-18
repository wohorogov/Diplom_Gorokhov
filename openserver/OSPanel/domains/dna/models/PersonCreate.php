<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Person;

/**
 * PersonCreate represents the model behind the search form of `app\models\Person`.
 */
class PersonCreate extends Person
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ID_person', 'live', 'ID_family'], 'integer'],
            [['Full_name', 'Date_of_birth', 'Place_of_birth', 'photo'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public static function tableName()
    {
        return 'Person';
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Person::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'ID_person' => $this->ID_person,
            'Date_of_birth' => $this->Date_of_birth,
            'live' => $this->live,
            'ID_family' => $this->ID_family,
        ]);

        $query->andFilterWhere(['like', 'Full_name', $this->Full_name])
            ->andFilterWhere(['like', 'Place_of_birth', $this->Place_of_birth])
            ->andFilterWhere(['like', 'photo', $this->photo]);

        return $dataProvider;
    }
}
