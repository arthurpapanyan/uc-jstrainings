@Library('jenkins-helpers') _
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                meth("act")
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
