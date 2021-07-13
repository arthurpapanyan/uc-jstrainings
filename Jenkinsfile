@Library('jenkins-helpers') _

pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo "Build"
                script{
                Builders.call("Valuation")

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
