@Library('jenkins-helpers') _
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                meth()
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
