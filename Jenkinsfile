pipeline {
    agent any

    stages{

        stage("checkout"){
            steps{
                sh("printenv | sort")
               sh"""
               git checkout newbranch
               git push -u origin newbranch
               
               """
            }
        }

    }
}
