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
       sh '''
       echo "JP=$JENKINS_PATH"
       echo "======="
       echo "$GIT_BRANCH"
       echo "$BRANCH_NAME"
       '''

      }
    }

  }
}