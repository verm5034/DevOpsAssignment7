pipeline {
      agent { label 'linux' }
  stages 
  {
        stage('Linting'){
              steps{
                    sh 'echo linting'
                    sh 'flake8 /app/*'
              }
        }
        stage('Build'){
              steps{
                sh 'echo Building'
                sh 'docker build -t classweb:$BUILD_NUMBER .'
              }
        }
        stage('Test'){
              steps{
                sh ' docker run -d -p 80:8080 --name classweb1 classweb:$BUILD_NUMBER '
                sh 'curl $(curl 169.254.169.254/latest/meta-data/local-ipv4) | grep "super"'
              }
        }
  }
      post {
    always {
      echo "deleting existing dockers"
       sh 'docker ps -f name=classweb1 -q | xargs --no-run-if-empty docker stop'
	 sh 'docker container ls -af name=classweb1 -q | xargs -r docker rm'
         
    }
  }
}
