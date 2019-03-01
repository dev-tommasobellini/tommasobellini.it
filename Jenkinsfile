pipeline {
    agent any

    tools {nodejs "my node"}

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                dir("tommasobellini-front") {
                    sh 'npm install'
                }
                echo 'Built...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                dir("tommasobellini-front") {
                    sh 'firebase deploy --token "1/pYmILKW17cdX55qzc_m42FR1HNo9Y8CZxkdHQCm6y8lPBK5NHATOe5ZqTTNZQAZt"'                   
                }
                echo 'Deployed'
            }
        }
    }
}