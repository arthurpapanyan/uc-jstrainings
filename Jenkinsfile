@Library('jenkins-helpers') _
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
script{
               meth("act")
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
