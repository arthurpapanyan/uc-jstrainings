pipeline {
    agent any

    stages{

        stage("checkout"){
            steps{
                sh("printenv | sort")
                sh("ssh -T git@github.com")
            }
        }

    }
}
