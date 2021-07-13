@Library('jenkins-helpers') _
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                libfunc()
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
                gitter()
            }
        }
    }
}
