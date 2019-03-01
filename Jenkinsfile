pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                cd tommasobellini-front && npm.cmd run build
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                cd tommasobellini-front && firebase deploy --token "1/pYmILKW17cdX55qzc_m42FR1HNo9Y8CZxkdHQCm6y8lPBK5NHATOe5ZqTTNZQAZt"
            }
        }
    }
}