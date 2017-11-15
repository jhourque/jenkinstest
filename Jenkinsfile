pipeline {
    agent any

    stages {
        stage('init') {
            steps {
                sh 'ls -R'
                withCredentials([[
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: 'aws_creds',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                ]]) {
                    sh 'env'
                    sh 'cd vpc; terraform init'
                }
            }
        }
        stage('plan') {
            steps {
                echo 'Testing..'
                withCredentials([[
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: 'aws_creds',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                ]]) {
                    sh 'cd vpc; terraform plan'
                }
            }
        }
    }
}
