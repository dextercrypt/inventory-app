node(label : 'nodejs_server') {
    stage('Update Code') {
        sh'''
             cd /home/ubuntu/inventory-app
             git checkout .
             git fetch
             git fetch origin 
             git checkout ${BRANCH}
             git pull origin ${BRANCH}
          '''
    }
    stage('Building Context') {
        sh'''
             cd /home/ubuntu/inventory-app
             sudo docker compose build --no-cache
          '''
    }
    stage('Deploying Docker-Compose') {
        sh''' 
             cd /home/ubuntu/inventory-app
             sudo docker compose up -d 
             sudo docker ps | grep inventory
             sudo docker ps | grep mongo
          '''
    }
    stage('Cleaning Docker Images from Server') {
        try {
        sh ''' 
            sudo docker rmi -f $(sudo docker images -a -q)  
           '''
       } catch (err) {
          echo err.getMessage()
          echo "DONE"
        }
    }
}
