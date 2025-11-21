pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK17'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'git@github.com:TON_USERNAME/java-interface-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Tests') {
            steps {
                sh 'mvn test'
            }
        }

        stage('SAST - SonarQube') {
            environment {
                SONAR_SCANNER_HOME = tool 'SonarScanner'
            }
            steps {
                withSonarQubeEnv('sonar-server') {
                    sh '''${SONAR_SCANNER_HOME}/bin/sonar-scanner \
                        -Dsonar.projectKey=java-demo \
                        -Dsonar.sources=src \
                        -Dsonar.java.binaries=target'''
                }
            }
        }

        stage('Build Artifact') {
            steps {
                sh 'mvn package'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', fingerprint: true
            }
        }

        stage('Deploy') {
            steps {
                sh 'cp target/*.war /var/www/html/'
            }
        }
    }
}

