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
            sh 'java -jar /opt/seleniumgrid/selenium-server-standalone-3.4.0.jar -role hub &'
            sh 'sleep 20'
            //sh 'java -Dwebdriver.chrome.driver=/usr/bin/chromedriver.exe -jar /opt/seleniumgrid/selenium-server-standalone-3.4.0.jar -port 5555 -role node -hub http://172.17.0.6:4444/grid/register/ -browser "browserName=chrome,maxInstances=3" &'
            sh 'ls /usr/bin/'
            sh 'java -Dwebdriver.chrome.driver=/src/test/java/com/test/core/chromedriver.exe -jar /opt/seleniumgrid/selenium-server-standalone-3.4.0.jar -port 5555 -role node -hub http://172.17.0.6:4444/grid/register/ -browser "browserName=chrome,maxInstances=3" &'
            sh 'sleep 30'
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
