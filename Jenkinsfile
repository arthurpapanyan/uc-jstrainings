pipeline {
    agent any
    parameters { 
        string(name: 'API_URL', defaultValue: 'develop', description: '')
        string(name: 'SSO_URL', defaultValue: 'develop', description: '')
        string(name: 'FRONTEND_BRANCH', defaultValue: 'develop', description: '')
        string(name: 'BUILD_TARGET', defaultValue: 'default', description: '')
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
              echo "Building"
                script{
                    build()
                }

                }   
            
            }
        }
    
}

def getChanges(){
   change = sh(returnStdout: true, script: 'git diff --name-only HEAD^1')
   return change
}

def build(String packages){
    if(getChanges().contains("packages/accounts") || packages == "accounts"){
        sh("./install --accounts")
    }else{
        sh("./install --accounts ${params.TRIGGERED}")
    }
    if(getChanges().contains("packages/builder") || packages == "builder"){
        sh("./install --builder")
    }else{
        sh("./install --builder ${params.TRIGGERED}")
    }
    if(getChanges().contains("packages/uc-commerce") || packages == "uc-commerce"){
        sh("./install --uc-commerce")
    }else{
         sh("./install --${params.BUILD_TARGET}")
    }
    
}