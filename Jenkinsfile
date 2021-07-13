@Library('jenkins-helpers') _
import jenkins-helpers.Builders
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
