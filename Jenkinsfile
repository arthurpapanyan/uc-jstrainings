library("jenkins-helpers")

pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script{
                    libfunc()
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
