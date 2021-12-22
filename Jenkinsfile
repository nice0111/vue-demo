


pipeline {
    agent any
    
    options{
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds() 
        skipStagesAfterUnstable() 
        // buildDiscarder(logRotator(numToKeepStr:'5'))
    }





    
    stages {


        stage('Build') {
            steps {
                
                     sh '''
                            cd $WORKSPACE
                            source /etc/profile
                            rm -f  yarn.lock
                            yarn cache clean
                            yarn install --verbose --registry=http://192.168.31.173:8081/repository/npm-proxy/
                            yarn build:prod

                            '''
                    
                }
                
            }
        }
        


    }
}
