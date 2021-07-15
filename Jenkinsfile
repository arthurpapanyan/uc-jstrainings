pipeline {
    libraries{
        lib 'jenkins-helpers@master'
    }
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Build"
                sh """
                ls -la
                git branch
                """
            }
        }

        stage('Deploy') {
            steps {
                echo "Dpleo"
            }
        }
    }
}
