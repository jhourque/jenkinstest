pipeline {
    agent any

    stages {
        stage('init') {
            steps {
                sh 'ls -R'
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
                    sh 'cd vpc'
                    sh 'terraform plan'
                }
            }
        }
    }
}
