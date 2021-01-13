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
      }
    }

  }
}