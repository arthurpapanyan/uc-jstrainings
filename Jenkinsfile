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
       echo ${env.CHANGE_BRANCH}
       BNAME=${env.BRANCH_NAME} | cut -d / -f 2,3 | tr [/]  - | tr '[:upper:]' '[:lower:]')
       echo $BNAME
       """
      }
    }

  }
}