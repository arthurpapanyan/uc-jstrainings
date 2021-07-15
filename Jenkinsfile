pipeline {
    agent any

    stages{

        stage("checkout"){
            steps{
                sh("printenv | sort")
            }
        }
        stage("build"){
            steps{
                sh("echo Building")

            }
        }
        stage("deploy"){
            steps{
                sh("echo Deploying")
            }
        }
        stage("unit tests"){
            steps{
                sh("echo testing")
            }
        }
        stage("api tests"){
            steps{
                sh("echo Api testing")
            }
        }
        stage("e2e tests"){
            steps{
                sh("echo e2e tests")
            }
        }
    }
}
