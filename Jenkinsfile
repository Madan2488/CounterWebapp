pipeline  {
  
  agent any 

	stages {
	
          stage('Checkout') {

		steps {

		checkout SCM

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
