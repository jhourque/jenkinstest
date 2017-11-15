node {
    withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws_creds',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
    ]]) {
        stage('terra_init') {
            sh 'ls -r'
            sh 'cd jenkinstest/vpc'
            sh 'terraform init'
        }
        stage('terra_plan') {
            sh 'terraform plan'
        }
    }
}
