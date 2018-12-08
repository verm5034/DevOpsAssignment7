pipeline {
      agent { label 'linux' }
  stages 
  {
    stage('Linting')
        {
              steps {
               git credentialsId: 'id', url: 'https://github.com/verm5034/DevOpsAssignment7.git'     
               sh 'flake8 ("/app/site.py" , "/app/requiremnts.txt")'

              }
        }
    
  }

  post {
    always {
      echo "code which should always run goes here"
    }
  }
}
