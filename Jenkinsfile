pipeline {
    libraries{
        lib 'jenkins-helpers@master'
    }
    agent any

    stages {
        stage("scm"){
            steps{
checkout changelog: false, scm: [$class: 'GitSCM', branches: [[name: '*/develop'], [name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[
            $class: 'PreBuildMerge',
            options: [
                fastForwardMode: 'NO_FF',
                mergeRemote: 'origin',
                mergeStrategy: 'MergeCommand.Strategy',
                mergeTarget: 'master'
            ]
        ]], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/arthurpapanyan/uc-jstrainings']]]
            }

        }
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
