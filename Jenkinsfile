pipeline {
    agent any

    stages{

        stage("checkout"){
            steps{
                sh("printenv | sort")
               sh"""
               git checkout -B newbranch
               echo changes > changes.txt
               git push -u origin newbranch
               cat .git/config
               """
            }
        }

    }
}
