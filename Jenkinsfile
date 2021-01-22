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
        
      }
    }   
    stage("Exporting Variables"){
      steps{
      cleanWs()
      }
    }

  }
}

def printVars(){
  sh "printenv | sort"
}