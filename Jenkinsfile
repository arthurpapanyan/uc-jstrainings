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
 

    stage("build"){
      steps{
        script{
          if("${env.STAGE_NAME}" == "build"){
            build()
          }
        }
      }
    }
    stage("deploy"){
      steps{
        script{
          if("${env.STAGE_NAME}" == "deploy"){
            deploy()
          }
        }
      }
    }

  }
}

def build(){
  sh "echo Building Project"
  sh "echo ./install --builder"
}
def deploy(){
  sh "echo Deploying images"
  sh "echo ./install -d --all"
}