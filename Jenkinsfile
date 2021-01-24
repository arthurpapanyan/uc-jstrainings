pipeline {

  agent any
  
  stages {
    stage('Start') {
      when {
         anyOf {
            branch 'feature-branch/*';
            branch 'master'
            branch 'webhooks'
          }
          allOf{
            branch 'webhooks'
          }
      }

      steps {
        sh 'echo "Exit"'
        echo "${currentBuild.buildCauses}"
        echo "${env.CHANGE_BRANCH}"
        echo "${env.CHANGE_TARGET}"
        buildnot()
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

def buildnot(){
  build job: 'TestNote'
}