@Library('jenkins-helpers') _

pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo "Build"
                script{
                Builders("Valuation")

                }

            }
        }

        stage('Deploy') {
            steps {
                echo "Dpleo"
            }
        }
    }
}
