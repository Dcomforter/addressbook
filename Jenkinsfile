pipeline {
    agent any

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
                // Build Docker image
                //sh 'docker build -t your-image-name .'
                sh 'This is a test Build'
              
            }
        }
        stage('Deploy Docker Image') {
            steps {
                // Push Docker image to registry (if needed)
                // For example, push to Docker Hub
                //sh 'docker push your-username/your-image-name'
                
                // Run Docker container from the built image
                //sh 'docker run -d -p 8080:8080 your-username/your-image-name'
                sh 'This is a test deployment'
            }
        }
    }
}
