library("jenkins-helpers")

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

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
