def docker
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
        
        stage('Test') {
            steps {
                // Build Docker image
                //sh 'docker build -t your-image-name .'
                echo "This is a Test Deployment"
                echo "DevOps makes sense"
                script {
                    docker.build('my-image:latest').inside {
                        // Execute commands inside the Docker container
                        sh 'echo "Hello, Docker!"'
                    }
                sh 'docker build -t my-web-app .'
                }
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
