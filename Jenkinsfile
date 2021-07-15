pipeline {
    libraries{
        lib 'jenkins-helpers@master'
    }
    agent any

    stages {
        stage("scm"){
            steps{

              checkout([
        $class: 'GitSCM',
        branches: [[name: 'refs/heads/develop']],
        userRemoteConfigs: [[
            name: 'origin',
            url: "http://github.com/arthurpapanyan/uc-jstrainings"
        ]],
        extensions:
        [[
            $class: 'PreBuildMerge',
            options: [
                fastForwardMode: 'NO_FF',
                mergeRemote: 'origin',
                mergeStrategy: 'MergeCommand.Strategy',
                mergeTarget: 'master'
            ]
        ]]
    ])
            }

        }
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
