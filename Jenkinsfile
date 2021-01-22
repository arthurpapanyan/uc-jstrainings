pipeline {

  agent any
  
  stages {
    stage('Start') {
      steps {
        sh 'echo "Exit"'
        echo "${currentBuild.buildCauses}"
        echo "${env.CHANGE_BRANCH}"
        echo "${env.CHANGE_TARGET}"
        detector()
      }
    }   
    stage('End') {
      steps {
        script{
          printvars()
        }
        printvars()
      }
    }   
  }
}

def detector(){
  if("${env.CHANGE_TARGET}" == "webhook"){
    sh "echo This is a PR branch"
  }else if("${env.BRANCH_NAME}" == "webhook"){
    echo "Single Branch Deployed"
  }
}
def printvars(){
  sh "printenv"
  sh "echo ./install -d --all"
}