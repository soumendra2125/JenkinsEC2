pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                // Pull the git repo
                cleanWs()
                git branch: 'main', url: 'https://github.com/soumendra2125/JenkinsEC2.git'
            }
        }

        stage('Terraform Deployment') {
            steps {
                script {
                    // CD into deployment folder and run terraform commands
                    
                        sh '''
                            terraform init
                            terraform plan
                            terraform apply -auto-approve
                        '''
                }
            }
        }
    }
}