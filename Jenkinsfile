pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    stages {
        stage('Build') {
            steps {
                // Checkout source code from Git
                //git 'https://github.com/Dcomforter/addressbook.git'
                
                // Build the Java project using Maven
                sh 'mvn clean package'
            }
        }

        stage('Install Docker') {
            steps {
                script {
                    sh 'sudo apt-get update'
                    sh 'sudo apt-get install -y docker.io'
                }
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build Docker image from Dockerfile
                tool name: 'Docker', type: 'docker'
                sh 'docker build -t addressbook-app .'
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Run Docker container from the built image
                sh 'docker run -d -p 9090:8081 addressbook-app'
            }
        }
        stage('Test') {
            steps {
                // Build Docker image
                //sh 'docker build -t your-image-name .'
                echo "This is a Test Deployment"
                echo "DevOps makes sense"
              
            }
        }
        stage('Deploy') {
            steps {
                // Push Docker image to registry (if needed)
                // For example, push to Docker Hub
                //sh 'docker push your-username/your-image-name'
                
                // Run Docker container from the built image
                //sh 'docker run -d -p 8080:8080 your-username/your-image-name'
                // sh 'This is a test deployment'
                echo "The application is deployed at this point"
            }
        }
    }
}
