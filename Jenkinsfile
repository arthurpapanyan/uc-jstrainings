@Library("jenkins-helpers")
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script{
                    gitter()
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh("echo ls").returnStdout()
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
