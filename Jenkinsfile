pipeline {
   libraries {
     lib('jenkins-helpers')
 }
  agent any
  
  stages {
    stage('Get Github info') {
      steps {
       call("Pixxie")
      }
    }
    stage('Exit') {
      steps {
        sh 'echo "Exit"'
        call("Pixxie")

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