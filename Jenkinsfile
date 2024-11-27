pipeline {
    agent any
    environment {
        TF_VAR_key = credentials('terraform-aws-key') // Example: Use Jenkins credentials
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
                sh 'terraform plan -out=tfplan'
            }
        }/*
        stage('Terraform Apply') {
            steps {
                input message: "Apply the Terraform plan?"
                sh 'terraform apply -auto-approve tfplan'
            }
        }*/
    }
}
