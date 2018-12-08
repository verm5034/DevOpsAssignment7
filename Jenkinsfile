pipeline {
      agent { label 'linux' }
  stages 
  {
    stage('Linting')
        {
              steps {
               git credentialsId: 'id', url: 'https://github.com/verm5034/DevOpsAssignment7.git'     
               sh 'flake8 "/app/site.py" , "/app/requiremnts.txt"'
               sh 'docker container rm classweb1'
              }
        }
      stage('Build')
        {
              steps {
              sh 'docker build -t classweb:$BUILD_NUMBER .'
              }
        }
      stage('Test')
        {
              steps{
                 sh 'docker run -d -p 80:8080 --name classweb1 classweb:$BUILD_NUMBER'
                 sh 'curl $(curl 169.254.169.254/latest/meta-data/local-ipv4) | grep "super" '
              }
        }
    
  }

  post {
    always {
      echo "code which should always run goes here"
    }
  }
}
