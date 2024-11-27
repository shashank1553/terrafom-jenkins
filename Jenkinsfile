pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/terraform-jenkins-pipeline.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan -var AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -var AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY'
            }
        }
/*
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply tfplan'
            }
        } */
    }
}
