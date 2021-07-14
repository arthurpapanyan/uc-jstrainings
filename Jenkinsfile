pipeline {
    libraries{
        lib 'jenkins-helpers@master'
    }
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Build"
                script{
                call("Valuation")
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
