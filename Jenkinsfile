pipeline  {
  
  agent any 

	stages {
	
          stage('Checkout') {

		steps {

		checkout scm

	 	 }
	  }
	stage('Skiping Test') {

		steps {

		sh 'mvn install -DskipTests'

		}
	}

	stage('Install') {

                steps {

                sh 'mvn install'

                }
        }
    }
  }
