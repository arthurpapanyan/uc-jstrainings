pipeline {
  agent any
  
  stages {
    stage('Get Github info') {
      steps {
        sh 'printenv'
        sh 'git show -s --pretty=%an'
        sh 'sh script.sh'
      }
    }

    stage('Exit') {
      steps {
        sh 'echo "Exit"'
        echo "${currentBuild.buildCauses}"
        echo "${env.CHANGE_AUTHOR}"
        echo "${env.CHANGE_BRANCH}"
        echo "${env.CHANGE_TARGET}"
      }
    }   
    stage('depl') {
      steps {
        script{
          if("${env.STAGE_NAME}" == "build"){
            printVars()
          }else{
            printAnother()
          }
        }
      }
    }   
    stage("Exporting Variables"){
      steps{
        script{
          if("${env.STAGE_NAME}" == "build"){
            printVars()
          }
        }
      }
    }

  }
}

def printVars(){
  sh "printenv | sort"
}
def printAnother(){
  sh "ls -la && echo heyy another"
}