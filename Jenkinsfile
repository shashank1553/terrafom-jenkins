pipeline {
    agent any
    environment {
        // Ensure the AWS credentials are passed from Jenkins credentials store
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')  // This references Jenkins stored credentials
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/shashank1553/terrafom-jenkins.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform fmt') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('Terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh '''
                    terraform plan -out=tfplan \
                    -var "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
                    -var "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}"
                '''
            }
        }
    }
}
