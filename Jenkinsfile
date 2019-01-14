#!/usr/bin/env groovy
pipeline {
   //agent any
   agent {
      dockerfile{
         filename 'Dockerfile'
         label ''
      }
   }
   tools{
      gradle 'gradle-4.5.1'
   }
   stages {
      stage('Preparation') { // for display purposes
         // Get some code from a GitHub repository.
         //git 'https://github.com:automation85/testauto.git'
         //git 'git@github.com:automation85/testauto.git'
         steps{
            echo "preparation stage......."
         }
      }
      stage('selenium grid setup') {
         steps{
            echo "run selenium grid......."
            sh 'java -jar /opt/seleniumgrid/selenium-server-standalone-3.13.0.jar -role hub'
         }
      }
      stage('Build') {
         steps{
            //echo "gradle home is ${env.GRADLE_USER_HOME}"
            sh 'gradle -v'
            sh 'docker-compose --version'
            //sh 'java -jar /opt/seleniumgrid/selenium-server-standalone-3.13.0.jar -role hub'
            //sh 'docker-compose up -d'
            sh 'gradle clean test'
            //sh "${workspace}/buildTask.sh"
         }

      }
      stage('Results') {
         steps{
            echo "results stage..."
         }
      }
   }
}
