pipeline {
    agent any
    environment {
        // Use Jenkins credentials for AWS Access and Secret Key
        AWS_ACCESS_KEY_ID = AWS_ACCESS_KEY_ID //credentials('terraform-aws-access-key')  // Correct credentials ID
        AWS_SECRET_ACCESS_KEY = AWS_SECRET_ACCESS_KEY //credentials('terraform-aws-secret-key')  // Correct credentials ID
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
        }
        /* stage('Terraform Apply') {
            steps {
                input message: "Apply the Terraform plan?"
                sh 'terraform apply -auto-approve tfplan'
            }
        } */
    }
}
