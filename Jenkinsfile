pipeline {
    agent any

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
