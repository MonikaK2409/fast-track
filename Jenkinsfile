pipeline {
    agent any

    parameters {
        string(name: 'DOCKER_IMAGE', defaultValue: 'mariadb', description: 'Docker Image Name')
    }

    stages {
        stage('Clone Repo') {
            steps {
                git url: 'https://github.com/your-username/fast-track.git'
            }
        }

        stage('Pull & Run Docker Image') {
            steps {
                sh '''
                chmod +x scripts/docker_operations.sh
                ./scripts/docker_operations.sh $DOCKER_IMAGE
                '''
            }
        }

        stage('Cleanup') {
            steps {
                sh '''
                chmod +x scripts/cleanup.sh
                ./scripts/cleanup.sh
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'build_log.txt', fingerprint: true
        }
    }
}
