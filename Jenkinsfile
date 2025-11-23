pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK17'
    }

    environment {
        WAR_FILE = 'target/java-interface-demo-1.0-SNAPSHOT.war'
        TOMCAT_PATH = '/var/lib/tomcat9/webapps/ROOT.war'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/bousminayasmine8-create/java-interface-demo.git'
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

        stage('SAST Analysis') {
            steps {
                echo "Analyse statique du code avec SpotBugs"
                sh 'mvn com.github.spotbugs:spotbugs-maven-plugin:spotbugs'
                archiveArtifacts artifacts: 'target/spotbugsXml.xml', allowEmptyArchive: true
            }
        }

        stage('DAST Analysis') {
            steps {
                echo "Analyse dynamique avec OWASP ZAP (en mode baseline scan)"
                sh '''
                docker run --rm -v $(pwd):/zap/wrk/:rw -t owasp/zap2docker-stable zap-baseline.py -t http://localhost:8080/ -r zap_report.html
                '''
                archiveArtifacts artifacts: 'zap_report.html', allowEmptyArchive: true
            }
        }

        stage('Deploy') {
            steps {
                sh """
                    sudo rm -rf /var/lib/tomcat9/webapps/ROOT
                    sudo cp ${WAR_FILE} ${TOMCAT_PATH}
                    sudo systemctl restart tomcat9
                """
            }
        }

    }

    post {
        always {
            echo "Pipeline terminée"
        }
        success {
            echo "Pipeline réussie"
        }
        failure {
            echo "Pipeline échouée"
        }
    }
}

