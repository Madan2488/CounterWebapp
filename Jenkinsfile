pipeline  {
  
  agent any 

	stages {
	
          stage('Checkout') {

		steps {

		checkout scm

	 	 }
	  }
	
	stage('Install') {

                steps {

                sh 'mvn install'

                }
        }
    }
  }
