pipeline {
    agent any

    tools {
        maven 'Maven3'
    }

    environment {
        //DOCKER_CREDENTIALS_ID = 'your-docker-credentials-id'
        //DOCKER_REGISTRY_URL = 'https://registry.example.com'
        DOCKER_IMAGE_NAME = 'addressbook-app'
        DOCKER_IMAGE_TAG = 'latest'
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
        
        stage('Build Docker Image') {
            steps {
                // Build Docker image from Dockerfile
                //sh 'docker build -t addressbook-app .'
                script {
                    // Build a Docker image with the .WAR file
                    def dockerImage = docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}", '.')
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Run Docker container from the built image
                //sh 'docker run -d -p 9090:8081 addressbook-app'
                script {
                    // Run the Docker container with the deployed .WAR file
                    docker.image("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}").run('-p 9090:8081', '--name=my-container', '--detach')
                }
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
