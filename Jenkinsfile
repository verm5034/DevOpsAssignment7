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
  }
}
