pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Mukhammed'
        STUDENT_SURNAME = 'Mamlayev'
        STUDENT_GROUP = 'IT2-2306'
        STUDENT_ID = '37060'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }

        stage('Build') {
            steps {
                echo "Student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
                echo "Group: ${env.STUDENT_GROUP}"
                echo "Student ID: ${env.STUDENT_ID}"
                sh 'chmod +x scripts/Mamlayev_Mukhammed_system.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'cd scripts && ./Mamlayev_Mukhammed_system.sh'
                sh 'python3 app/app.py --once'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t mamlayev-mukhammed-devops .'
                sh 'docker images mamlayev-mukhammed-devops'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker rm -f mamlayev-mukhammed-container || true'
                sh 'docker run -d --name mamlayev-mukhammed-container -p 5000:5000 -e STUDENT_NAME=$STUDENT_NAME -e STUDENT_SURNAME=$STUDENT_SURNAME -e STUDENT_GROUP=$STUDENT_GROUP -e STUDENT_ID=$STUDENT_ID mamlayev-mukhammed-devops'
                sh 'docker ps'
            }
        }
    }
}
