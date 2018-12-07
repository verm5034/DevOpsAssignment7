pipeline {
      agent { label 'linux' }
  stages 
  {
    stage('BUILD')    
    {
          steps{
                sh 'docker build -t classweb:$BUILD_NUMBER .'
            }
    }

  }

  post {
    always {
      echo "code which should always run goes here"
    }
  }
}
