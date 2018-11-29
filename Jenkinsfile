#!/usr/bin/env groovy
pipeline {
   agent any
   stages {
      stage('Preparation') { // for display purposes
         // Get some code from a GitHub repository.
         //git 'https://github.com:automation85/testauto.git'
         //git 'git@github.com:automation85/testauto.git'
      }
      stage('Build') {
         gradle clean
      }
      stage('Results') {

      }
   }
}