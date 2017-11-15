node {
    withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws_creds',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
    ]]) {
        stage('terra_init') {
            sh 'ls -R'
            sh 'cd vpc'
            sh 'terraform init'
        }
        stage('terra_plan') {
            sh 'terraform plan'
        }
    }
}
