pipeline {
      agent { label 'linux' }
  stages 
  {
    stage('Linting')    
    {
    flake8 ("/app/site.py" , "/app/requiremnts.txt")
    }

  }

  post {
    always {
      echo "code which should always run goes here"
    }
  }
}
