pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Source downloaded'
            }
        }

        stage('Verify') {
            steps {
                sh 'ls -la'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                rsync -av --delete ./ root@192.168.89.131:/var/lib/docker/volumes/volume/_data/
                '''
            }
        }
        stage('Verify Deployment') {
            steps {
                sh '''
                curl -f http://192.168.89.131:8080
                '''
            }
        }
    }
}