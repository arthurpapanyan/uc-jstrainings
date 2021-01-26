pipeline {
    agent any
    parameters { 
        string(name: 'API_URL', defaultValue: 'develop', description: '')
        string(name: 'SSO_URL', defaultValue: 'develop', description: '')
        string(name: 'FRONTEND_BRANCH', defaultValue: 'develop', description: '')
        string(name: 'BUILD_TARGET', defaultValue: '', description: '')
        string(name: 'TRIGGERED', defaultValue: 'Yes', description: '')
     }
    stages{
        stage("Building Sources"){
            when{
                anyOf{
                    branch "develop"
                    branch "master"
                }
            }
            steps{
                script{
                    build()

                }

                }   
            
            }
        }
    }
}

def getChanges(){
   change = sh(returnStdout: true, script: 'git diff --name-only HEAD^1')

   return change
}

def build(String package){
    if(getChanges().contains("packages/accounts") || package = "accounts"){
        sh("./install --accounts")
    }else{
        sh("./install --accounts ${params.TRIGGERED}")
    }
    if(getChanges().contains("packages/builder" package = "builder")){
        sh("./install --builder")
    }else{
        sh("./install --builder ${params.TRIGGERED}")
    }
    if(getChanges().contains("packages/uc-commerce") || package = "uc-commerce"){
        sh("./install --uc-commerce")
    }
    
}