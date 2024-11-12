pipeline{
    agent any

    stages{
        stage("Test"){
            steps{
                sh "./mvnw test -D testGroups=unit"
            }
        }
    }
}
