pipeline {
  agent any
  
  stages {
    stage('Get Github info') {
      steps {
        sh 'printenv'
        sh 'git show -s --pretty=%an'
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
    stage("Exporting Variables"){
      steps{
       sh"""
       echo ${env.BRANCH_NAME}
       export BNAME=${env.BRANCH_NAME} | cut -d / -f 2,3 | tr [/]  - | tr '[:upper:]' '[:lower:]')
       export BNAME=${env.GIT_BRANCH} | cut -d / -f 2,3 | tr [/]  - | tr '[:upper:]' '[:lower:]')
       echo ${env.BNAME}
       """
      }
    }

  }
}