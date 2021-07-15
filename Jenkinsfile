pipeline {
    libraries{
        lib 'jenkins-helpers@master'
    }
    agent any

    stages {
        stage("env"){
            steps{
                sh "printenv | sort"
            }
        }
        stage('Build') {
            steps {
                echo "Build"
                sh """
                ls -la
                git branch
                git log
                cat branch
                
                """
            }
        }

        stage('Deploy') {
            steps {
                echo "deploy"
            }
        }
    }
}
