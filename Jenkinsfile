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
                    branch "newbranch"
                }
            }
            steps{
              echo "Building Step"
                script{
                   println(" Installing Sources")
                   buildPackage()
                }

                }   
            
            }
        
        }
     post { 
            always { 
                script {
                  notifier()
                }
            }
         } 
}

def getChanges(){
   change = sh(returnStdout: true, script: 'git diff --name-only HEAD^1')
   return change
}

def buildPackage(String packages){
    if(getChanges().contains("packages/accounts") || packages == "accounts"){
        echo"Accounts change Detected"
        sh("./install --accounts")
    }else{
        echo"Accounts change not Detected"
        sh("./install --accounts ${params.TRIGGERED}")
    }
    if(getChanges().contains("packages/builder") || packages == "builder"){
        sh("./install --builder")
        echo("Builder change Detected")

    }else{
        echo("Builder change not Detected")
        sh("./install --builder ${params.TRIGGERED}")
    }
    if(getChanges().contains("packages/uc-commerce") || packages == "uc-commerce"){
        sh("./install --uc-commerce")
    }else{
         sh("./install --${params.BUILD_TARGET}")
    }
    
}
def notifier(){
  def stageNumber = "24"
  def post = new URL("https://hooks.slack.com/services/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").openConnection();
  def message = "{'blocks':[{'type':'header','text':{'type':'plain_text','text':'Build Complete','emoji':true}},{'type':'section','text':{'type':'mrkdwn','text':'${stageNumber} is successfsullu built'}},{'type':'divider'}]}"
  post.setRequestMethod("POST")
  post.setDoOutput(true)
  post.setRequestProperty("Content-Type", "application/json")
  post.getOutputStream().write(message.getBytes("UTF-8"));
  def postRC = post.getResponseCode();
  println("Notifications Sent")

}