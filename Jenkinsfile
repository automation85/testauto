#!/usr/bin/env groovy
pipeline {
   agent any
   tools{
      gradle 'gradle-4.5.1'
   }
   stages {
      stage('Preparation') { // for display purposes
         // Get some code from a GitHub repository.
         //git 'https://github.com:automation85/testauto.git'
         //git 'git@github.com:automation85/testauto.git'
         steps{
            echo "preparation stage...."
         }
      }
      stage('Build') {
         steps{
            //echo "gradle home is ${env.GRADLE_USER_HOME}"
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