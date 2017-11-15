pipeline {
    agent any

    withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws_creds',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
    ]]) {
	    stages {
	        stage('deploy') {
	            sh 'echo \'provider "aws" { region = "eu-west-1" } \
	                                                               \
	                       resource "aws_vpc" "my_vpc" {           \
	                           cidr_block = "10.0.1.0/24"          \
	                                                               \
	                           tags {                              \
	                               Name = "my_vpctest"             \
	                               Group = "my_infratest"          \
	                           }                                   \
	                       }\' > main.tf'
	        }
	        stage('terra_init') {
	            sh 'terraform init'
	        }
	        stage('terra_plan') {
	            sh 'terraform plan'
	        }
	    }
	}
}
