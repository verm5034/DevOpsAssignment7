pipeline {
      agent { label 'linux' }
  stages 
  {
    stage('Linting')
        {
              steps {
               git credentialsId: 'id', url: 'https://github.com/verm5034/DevOpsAssignment7.git'     
              }
        }
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
