pipeline{
    agent any

    stages{
        stage("Clean"){
            steps{
                sh "./mvnw clean"
            }
        }
        stage("Unit Test"){
            steps{
                sh "./mvnw test -D testGroups=unit"
            }
        }

        stage("Package"){
            steps{
                sh "./mvnw package"
            }
        }
    }
}
