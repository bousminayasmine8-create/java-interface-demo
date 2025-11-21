pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/bousminayasmine8-create/java-interface-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
