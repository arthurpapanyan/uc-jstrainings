pipeline {
    libraries{
        lib 'jenkins-helpers@master'
    }
    agent any

    stages{

        stage("checkout"){
            steps{
                sh("printenv | sort")
            }
        }
        stage("build"){
            steps(
                sh("Building")
            )
        }
        stage("deploy"){
            steps{

sh("Deploying")
            }
        }
        stage("unit tests"){
            steps{
sh("testing")

            }
        }
        stage("api tests"){
            steps{

sh("Api testing")
            }
        }
        stage("e2e tests"){
            steps{
            sh("e2e tests")

            }
        }
    }
}
}
