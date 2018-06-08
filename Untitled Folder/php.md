 public function actionusergeneratedcontent() {
        $this->pageTitle = "Muvi | User Generated Content";
        $this->breadcrumbs = array('Analytics', 'User Generated Content');
        $this->headerinfo = "User Generated Content";
        
        
        $url=PYTHON_URL.'/ugc/';
        $params['studio_id'] = Yii::app()->user->studio_id;
        $ch = curl_init();
        $curlConfig = array(
        CURLOPT_URL => $url,
        CURLOPT_POST => true,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POSTFIELDS => $params
        );
        curl_setopt_array($ch, $curlConfig);
        $result = curl_exec($ch);
        curl_close($ch);
        $data = array(
            'records' => json_decode($result, true)
        );
        
        $this->render('userGeneratedContent',$data);
       }
