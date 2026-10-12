pipeline {
  agent any

  parameters {
    choice(name: 'ENV', choices: ['dev', 'preprod', 'prod'], description: 'Environment')
  }

  stages {
    stage('Checkout') {
      steps { checkout scm }
    }

    stage('Terraform Init') {
      steps { sh 'terraform init -input=false' }
    }

    stage('Workspace Select') {
      steps {
        sh "terraform workspace select ${params.ENV} || terraform workspace new ${params.ENV}"
      }
    }

    stage('Plan') {
      steps {
        sh "terraform plan -var-file=${params.ENV}.tfvars -out=tfplan"
      }
    }

    stage('Approve') {
      steps { input message: 'Apply the plan?', ok: 'Approve' }
    }

    stage('Apply') {
      steps { sh 'terraform apply -input=false tfplan' }
    }
  }

  post {
    success { echo 'Pipeline succeeded' }
    failure {
      mail to: 'menna.medhathassan111@gmail.com',
           subject: "FAILED: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
           body: "Check: ${env.BUILD_URL}"
    }
  }
}