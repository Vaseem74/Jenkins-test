pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Hello, World!'  // Prints Hello, World! to the Jenkins console
            }
        }
        stage('Test') {
            steps {
                echo 'Running Tests...'
                // You can add testing commands here, like running unit tests
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // You can add deployment steps here, like copying files or executing a deployment command
            }
        }
    }

    post {
        always {
            echo 'This will always run, regardless of the build result.'
        }
        success {
            echo 'The build was successful!'
        }
        failure {
            echo 'The build failed!'
        }
    }
}

