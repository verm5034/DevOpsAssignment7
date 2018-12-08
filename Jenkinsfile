pipeline {
      agent { label 'linux' }
  stages 
  {
    stage('Linting')
        {
              steps {
                   
               sh 'flake8 "/app/site.py" , "/app/requiremnts.txt"'
               
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
         sh 'docker ps -f name=classweb1 -q | xargs --no-run-if-empty docker stop'
	 sh 'docker container ls -af name=classweb1 -q | xargs -r docker rm' 
    }
  }
}
