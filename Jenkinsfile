pipeline {
    agent any

    stages{

        stage("checkout"){
            steps{
                sh("printenv | sort")
            }
        }
        stage('Push') {
        environment { 
            GIT_AUTH = credentials('458a9e75-a2b9-4ec5-bc8f-11bb2230f0ac') 
        }
        steps {
            sh('''
                git config --local credential.helper "!f() { echo username=\\$GIT_AUTH_USR; echo password=\\$GIT_AUTH_PSW; }; f"
                git push origin HEAD:$TARGET_BRANCH
            ''')
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
