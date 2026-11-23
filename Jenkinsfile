pipeline {
    agent any
    parameters {
        booleanParam(name: 'DEPLOY', defaultValue: true, description: 'Czy uruchomić etap wdrożenia?')
    }
    stages {
        stage('Checkout') {
            steps {
                 git url: 'https://github.com/PeterPorzuczek/TimeRiddle.git', branch: 'master'
            }
        }
        stage('Build') {
            steps {
                echo 'Budowanie aplikacji...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testowanie aplikacji...'
            }
        }
        stage('Deploy') {
            when {
                expression { params.DEPLOY }
            }
            steps {
                echo 'Wdrażanie aplikacji...'
            }
        }
    }
}
