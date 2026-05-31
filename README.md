## Hi there! this my new project
**Welcome to the Hotstart App Deployment project! This project demonstrates how to deploy a Hotstar Next.js application on Kubernetes cluster using modern DevOps tools, practices and following a DevSecOps approach.**

## 🛠️ **Tools & Services Used**

| **Category**       | **Tools**                                                                                                                                                                                                 |
|---------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Version Control** | ![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)                                                                                                       |
| **CI/CD**           | ![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=flat-square&logo=jenkins&logoColor=white)                                                                                                    |
| **Code Quality**    | ![SonarQube](https://img.shields.io/badge/SonarQube-4E9BCD?style=flat-square&logo=sonarqube&logoColor=white)                                                                                              |
| **Containerization**| ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)                                                                                                       |
| **Orchestration**   | ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white)                                                                                          |
| **Monitoring**      | ![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white) ![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white) |
| **Security**        | ![OWASP](https://img.shields.io/badge/OWASP-000000?style=flat-square&logo=owasp&logoColor=white) ![Trivy](https://img.shields.io/badge/Trivy-00979D?style=flat-square&logo=trivy&logoColor=white)         |
| **IAC**             | ![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=flat-square&logo=terraform&logoColor=white)
---
## 🚦 **Project Stages**

### **Phase 1: Deployment to Docker Container**
- Containerize the application using Docker.
- Build and push Docker images to a container registry.
- Run the application in a Docker container.

### **Phase 2: Deployment to EKS Cluster with Monitoring**
- Deploy the application to an **Amazon EKS (Elastic Kubernetes Service)** cluster.
- Set up **Prometheus** and **Grafana** for monitoring and visualization.
- Implement **Trivy** for vulnerability scanning and **OWASP** for security best practices.

---

## 📂 **Code Repository**
Explore the code and contribute to the project:  
[![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Aseemakram19/hotstar-kubernetes.git)

---
## 📹 **Project Video**
Watch the step-by-step deployment process:  
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtu.be/VPJ4gesLXOc)

---
## 🚀 **Other DevOps Projects**

| **Project**                                | **Video Link**                                                                                   |
|--------------------------------------------|--------------------------------------------------------------------------------------------------|
| **JAVA APPLICATION DEPLOYMENT Project**                     | [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat-square&logo=youtube&logoColor=white)](https://www.youtube.com/watch?v=R98DHKqAEos) |
| **Deployment of BINGO in Kubernetes Cluster Monitoring**  | [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat-square&logo=youtube&logoColor=white)](https://youtu.be/j6YxADVF0W8) |
| **Real-time CICD pipeline Website Jenkins CI CD**         | [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat-square&logo=youtube&logoColor=white)](https://youtu.be/xGWx_cXb9DE) |
| **DevOps Project , Application deployment on App server via Terraform, Jenkins, SonarQube**                     | [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat-square&logo=youtube&logoColor=white)](https://youtu.be/xGWx_cXb9DE) |
| **Realtime NODE.js App deployment with PM2 , Shell script, Jenkins, SonarQube ,Github ,Domain SSL cert**                     | [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat-square&logo=youtube&logoColor=white)](https://youtu.be/MFtUCfQ1RX0) |

## 🤝 **Connect with Me**

Let's connect and discuss DevSecOps  

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mohammed-aseem-akram/)  




``` bash 
git clone https://github.com/VIVEKCHOWDARI10/hotstar-kubernetes.git hotstar-project 
cd hotstar-project
git init 
```

1. create a new repo in  your github ( Hotstar-project) 
2. go to utm 
 ``` bash
git remote add hotstar  <Hotstar-project git url >
git remote - v
git push -u hotstar main --force
```


IN JIRA , MOVE THE TASK IN TO-DO TO IN -PROGRESS AND START THE PROJECT 

3. Now use your utm or else create an  EC2 instance ( ubuntu , t3.xlarge , keypair for ssh , 15 GiB , for now open all ports in inbound rules or else open ports  for
* HTTP , HTTPS
* 8080 for jenkins
* 9000 for sonarqube
* 587 for email-smtp
* 465 for gmail
) 

4. SSH into the ec2 instance using .pem file and check the architecture of ec2 once
``` bash
hostnamectl
```
5. clone the  git repo into ec2 ( no need to install git ,git automatically exists/downloaded )
6. now the process will be same , even if your are using  ec2 or utm


``` bash
cd  hotstar-project
cd  scripts
chmod +x *.sh
```
7. chmod +x *.sh will give permissions for execution
** JENKINS INSTALLATION **
   
8. Now RUN the jenkins scipt to install jenkins ( jenkins.sh for ubuntu-ec2  and jenkins-centos.sh for centos-utm )

   
NOTE :
Jenkins is build/Run on java 

``` bash
ls -l
sh jenkins-centos.sh
java --version
sudo systemctl status jenkins
```
9. now you can access jenkins at port 8080 and the intial password will be saved at
``` bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
10 . ACCESS JENKINS AND SETUP AT 
``` bash
http://<UTM-IP>:8080 or http://<EC2-IP>:8080
``` 
*** DOCKER INSTALLATION ***

run docker script ( docker.sh for ubuntu and  docker-centos.sh for centos )
``` bash
sh docker-centos.sh
docker --version
```
*** sonarqube installation ***


run sonarqube as a docker container :
``` bash
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
```
``` bash 
docker images
docker ps 
```
*** kubectl installation ***

run kubectl  script ( kubectl.sh for ubuntu and  kubectl-centos.sh for centos )
``` bash
sh kubectl-centos.sh
```
11. Run scripts one by one
``` bash
sh awscli-centos.sh
sh trivy.sh
sh terraform-centos.sh 
```
12. after awscli installation ,configure it
``` bash
aws configure
```
It  Asks :
```
AWS Access Key ID:
AWS Secret Access Key:
Default region:
Default output format:
```
This you can get it by creating an iam user and then creating the access key in that user 



OPEN JENKINS AND CONFIGURE 

Install following  plugins :

-> Eclipse temurin installer 
-> sonarqube scanner 
->Nodejs plugin 
-> owasp dependency check 
->stage view , blue ocean(if needed ) 
-> jdk
->docker , docker commons , docker pipeline , docker api , docker-build-step
-> terraform 
-> email extension plugun 
-> workspace cleanup plugin 

OPEN SONARQUBE AND CONNECT IT TO  JENKINS 
``` bash
http://<utm-ip>:9000
```

username :admin

password : admin

 -> now we need to connect the sonarqube and jenkins ,this can be done by creating the token in sonarqube and adding it in  jenkins 

 Administration -> security -> users -> token -> generate token 

** CONFIGURE JENKINS ** 


manage-jenkins-> system -> sonar qube installations -> name ( SonarQube ) -> Add sonarqube url (include http:// ) and token 

manage-jenkins-> system -> sonar server -> for token click on ADD -> secret text -> add token in secret -> give ID ( you will  call this secret using this ID ) -> ID( sonar-token )
 
manage-jenkins-> tools -> jdk -> give name (jdk)  -> select install automatically -> select install from adoptium.net -> select version (17.0.9)
IF pipeline fails saying architecture not match ,then add path to it  manually   ( i manully gave path )

manage-jenkins-> tools -> sonar scanner installations -> give  name (sonar-scanner) -> select install automatically -> select version (7.0.0.4796)

manage-jenkins-> tools -> nodejs -> give  name (nodejs)  -> select install automatically -> select version (17.9.0 or some require 18 version)

manage-jenkins-> tools -> dependency check installations -> give  name (DC) -> select install automatically -> install from github -> version (12.1.0)

add git token in jenkins : git -> settings -> developer settings -> access tokens -> generate token (classic ) -> give permissions as needed 

jenkins -> manage jenkins -> creentials -> select  user and password -> user = git hub name -> password = token generated -> give ID 

** CREATE A PIPELINE ** 


for quality gate stage we have to create a webhook  inside the sonarqube to pass the result back to jenkins 

sonarqube -> configuration -> webhooks -> create webhook -> add  url as ``` bash http://<jenkins-url>/sonarqube-webhook/ ```

```
pipeline{
    agent any
    tools{
        jdk 'jdk17'
        nodejs 'nodejs'
    }
    environment {
        SCANNER_HOME=tool 'sonar-scanner'
    }
    stages {
        stage('clean workspace'){
            steps{
                cleanWs()
            }
        }
   
        stage('Checkout from Git'){
            steps{
              git branch: 'main', credentialsId: 'GIT-TOKEN', url: 'https://github.com/VIVEKCHOWDARI10/Hotstar-Project.git'
            }
        }
       stage("Sonarqube Analysis "){
            steps{
                withSonarQubeEnv('SonarQube') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Hotstar \
                    -Dsonar.projectKey=Hotstar '''
                }
            }
        }
        stage("quality gate"){
           steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'Sonar-token' 
                }
            } 
        }
        stage('Install Dependencies') {
            steps {
                sh "npm install"
            }
        }
```


now you have to create a API (NVDAPI ) and we will use it for owasp to connect to the NVD for faster requests and scans 

STEPS :

1. go to this website
``` bash
https://nvd.nist.gov/developers/request-an-api-key
```
2.give random name -> your email -> personal use/ not listed ->submit -> go to our email and chek for apikey and replace below one with newone



``` bash
stage('OWASP FS SCAN') {
            steps {
                dependencyCheck additionalArguments: '--scan ./ --disableYarnAudit --disableNodeAudit --nvdApiKey 8C74A11E-915A-F111-836C-0EBF96DE670D', odcInstallation: 'DC'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
           }
        }
            stage('TRIVY FS SCAN') {
            steps {
                sh "trivy fs . > trivyfs.txt"
            }
        }
```

3. now add docker credentials to  build and push the image to docker hub

manage jenkins -> credentials -> select username and password -> username = dockerhub username -> password =  token -> ID ( docker )

for token ,go to docker hub -> profile -> personal access tokens -> permisiions = read and write to pull  and push images -> generate token -> go and add it in jenkins with username and password 

NOTE :

docker no longer accept normal passwords,  only tokens  

**** most important note *** : Dont add tools for docker , only the token is required because system architecture may different from docker tool , so DO NOT configure Docker tool installation in Jenkins.   Use system Docker directly.

``` bash
stage("Docker Build & Push"){
            steps{
                script{
                   withDockerRegistry(credentialsId: 'docker', toolName: 'docker'){   
                       sh "docker build -t hotstar ."
                       sh "docker tag hotstar vivekchowdari/hotstar:latest "
                       sh "docker push vivekchowdari/hotstar:latest "
                    }
                }
            }
        }
        stage("TRIVY"){
            steps{
                sh "trivy image vivekchowdari/hotstar:latest > trivyimage.txt" 
            }
        }
        stage('Deploy to container'){
            steps{
                sh 'docker run -d --name hotstar -p 3000:3000 vivekchowdari/hotstar:latest'
            }
        }

    }
```
now we have to setup smtp server ( we  use gmail ) to get notified about build success or failure 

steps :

1. gmail -> manage accounts -> search app passwords -> name = hotstar -> copy that generated app password
  
2. manage jenkins -> system -> Email notification -> smtp server = smtp.gmail.com -> suffix = @gmail.com -> advanced ->  use smtp authentication ,  username = your email id , password = app password generated above -> select use SSL -> SMTP port = 465 -> reply address = person email address who wants to get the reply ( usally when we get email build fail we give reply so to whom this reply has to go )

3. manage jenkins -> system ->  Extended email notification -> smtp server = smtp.gmail.com , smtp port = 587 -> advanced -> add credentials username = your mail id ,password = app password generated above -> ID ( smtp-gmail ) -> select use TLS -> default suffix = @gmail.com -> SAVE


``` bash
post {
    always {
        script {
            def buildStatus = currentBuild.currentResult
            def buildUser = currentBuild.getBuildCauses('hudson.model.Cause$UserIdCause')[0]?.userId ?: 'Github User'
            
            emailext (
                subject: "Pipeline ${buildStatus}: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                    <p>This is a Jenkins HOTSTAR CICD pipeline status.</p>
                    <p>Project: ${env.JOB_NAME}</p>
                    <p>Build Number: ${env.BUILD_NUMBER}</p>
                    <p>Build Status: ${buildStatus}</p>
                    <p>Started by: ${buildUser}</p>
                    <p>Build URL: <a href="${env.BUILD_URL}">${env.BUILD_URL}</a></p>
                """,
                to: 'vivekchowdari10@gmail.com',
                from: 'vivekchowdari10@gmail.com',
                replyTo: 'vivekchowdari10@gmail.com',
                mimeType: 'text/html',
                attachmentsPattern: 'trivyfs.txt,trivyimage.txt'
            )
           }
       }
``` 
REMEMBER :
post stage will be at last separate code , after closing  all brackets for stages , it is not part of stages 




COMPLETE PIPELINE :

``` bash

pipeline{
    agent any
    tools{
        jdk 'jdk17'
        nodejs 'nodejs'
    }
    environment {
        SCANNER_HOME=tool 'sonar-scanner'
    }
    stages {
        stage('clean workspace'){
            steps{
                cleanWs()
            }
        }
   
        stage('Checkout from Git'){
            steps{
              git branch: 'main', credentialsId: 'GIT-TOKEN', url: 'https://github.com/VIVEKCHOWDARI10/Hotstar-Project.git'
            }
        }
       stage("Sonarqube Analysis "){
            steps{
                withSonarQubeEnv('SonarQube') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Hotstar \
                    -Dsonar.projectKey=Hotstar '''
                }
            }
        }
        stage("quality gate"){
           steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'Sonar-token' 
                }
            } 
        }
        stage('Install Dependencies') {
            steps {
                sh "npm install"
            }
        }
       stage('OWASP FS SCAN') {
            steps {
                dependencyCheck additionalArguments: '--scan ./ --disableYarnAudit --disableNodeAudit --nvdApiKey 8C74A11E-915A-F111-836C-0EBF96DE670D', odcInstallation: 'DC'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
           }
        }
            stage('TRIVY FS SCAN') {
            steps {
                sh "trivy fs . > trivyfs.txt"
            }
        }
       stage("Docker Build & Push"){
            steps{
                script{
                   withDockerRegistry(credentialsId: 'docker', toolName: 'docker'){   
                       sh "docker build -t hotstar ."
                       sh "docker tag hotstar vivekchowdari/hotstar:latest "
                       sh "docker push vivekchowdari/hotstar:latest "
                    }
                }
            }
        }
        stage("TRIVY"){
            steps{
                sh "trivy image vivekchowdari/hotstar:latest > trivyimage.txt" 
            }
        }
        stage('Deploy to container'){
            steps{
                sh 'docker run -d --name hotstar -p 3000:3000 vivekchowdari/hotstar:latest'
            }
        }
      }
    }
post {
    always {
        script {
            def buildStatus = currentBuild.currentResult
            def buildUser = currentBuild.getBuildCauses('hudson.model.Cause$UserIdCause')[0]?.userId ?: 'Github User'
            
            emailext (
                subject: "Pipeline ${buildStatus}: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                body: """
                    <p>This is a Jenkins HOTSTAR CICD pipeline status.</p>
                    <p>Project: ${env.JOB_NAME}</p>
                    <p>Build Number: ${env.BUILD_NUMBER}</p>
                    <p>Build Status: ${buildStatus}</p>
                    <p>Started by: ${buildUser}</p>
                    <p>Build URL: <a href="${env.BUILD_URL}">${env.BUILD_URL}</a></p>
                """,
                to: 'vivekchowdari10@gmail.com',
                from: 'vivekchowdari10@gmail.com',
                replyTo: 'vivekchowdari10@gmail.com',
                mimeType: 'text/html',
                attachmentsPattern: 'trivyfs.txt,trivyimage.txt'
            )
           }
       }
}

```



*** DEPLOYMENT PART ( EKS ) *** 

Install aws cli , kubectl , eksctl latest version 

``` bash
# Install unzip
sudo yum install unzip -y

# Install AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

aws --version

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

chmod +x kubectl

sudo mv kubectl /usr/local/bin/

kubectl version --client


# Install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

sudo mv /tmp/eksctl /usr/local/bin

eksctl version
```

1. CONNECTING CLI TO AWS :

 
 * go to aws -> iam -> users -> create user ( hotstar-user ) -> attach policy directly ( administration access,, amazon ec2 full access ,, iam   full access ,, vpc full access ,, cloudfront full access ) - > done

 * click user created ->  create accesss key ( to connect cli to this aws ) -> select cli -> create access key -> we get access  key and secret access key ,so copy them

 *  go to utm cli  and type
``` bash
aws configure
```
IT WILL ASK :
``` bash
AWS ACCESS KEY ID :
AWS SECRET ACCESS KEY ID :
DEFAULT REGION :  ( just press enter make it default )
``` 

* now create eks cluster ,before you should have one default vpc
``` bash
aws ec2 create-default-vpc --region ap-south-1
```
```
aws ec2 describe-vpcs \
--filters Name=isDefault,Values=true \
--region ap-south-1
```  
 THis is the VPC ID 

 * why vpc ?
 * An EC2 instance is a virtual server in AWS, but every server needs a network to communicate with other systems and the internet. In AWS, that network is called a VPC (Virtual Private Cloud). A VPC provides IP addresses, routing, internet connectivity, and security boundaries for AWS resources. When you create an EC2 instance, AWS must know which VPC and subnet to place it in.
   
* This will create one node, means one ec2 instance  and a eks cluster in aws 
``` bash
eksctl create cluster \
  --name my-cluster \
  --region ap-south-1 \
  --node-type t2.medium \
  --nodes 1
```
* now u have to create pods in this EKS

``` bash
cd K8S
kubectl apply -f manifest.yml
kubectl get all 
```
* now copy the EXTERNAL IP  of the LOAD BALANCER service  and paste it in browser to access the application 

** CLOUD FLARE  FOR DNS** 

cloudflare -> DNS -> Add record -> type = CNAME ,, name = hotstar ,, target = loadbalancer service-EXTERNAL IP -> SAVE 

* Access application using ( SSL certification is also applied / issued for this application )

  ``` bash
  hotstar.cloudaseem.com 

*** CREATING MONITORING SERVER USING TERRAFORM  *** 

* go to jenkins -> create a pipeline ( monitoring server ) -> add jenkins file -> then go and add two credentials( secret text ) for access key id (ID = AWS_ACCESS_KEY_ID ) and secret access key ( ID = AWS_SECRET_ACCESS_KEY ) so we will use  them in jenkins file 

* this pipeline is a parameterized pipieline so -> select this project is parameterized -> choice parameter -> name = action , choices = apply ,destroy -> apply to create resources and destroy to delete all of them

* go to aws and click on create key pair -> name = terra ->  RSA ->  .pem or .ppk -> create it -> we use this terra in this jenkins pipeline

* build the pipeline with parameter apply , if success we can see new  ec2 instance (monitoring-server ) in AWS

* in terraform in the variable.tf :

    Code	                      Meaning
default = "insert"	   -> Placeholder/default value ( the "insert" values are ignored and replaced by the real values from Jenkins. )
sensitive = true	     -> Hide the value from logs
{}	= No default value;   -> value must be supplied
``` bash
pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout from Git') {                        
            steps {
               git branch: 'main', credentialsId: 'GIT-TOKEN', url: 'https://github.com/VIVEKCHOWDARI10/Hotstar-Project.git'
            }
        }

        stage('Terraform version') {
            steps {
                sh 'terraform --version'
            }
        }

        stage('Terraform init') {
            steps {
                dir('Terraform') {
                    sh '''
                    terraform init \
                    -backend-config="access_key=$AWS_ACCESS_KEY_ID" \
                    -backend-config="secret_key=$AWS_SECRET_ACCESS_KEY"
                    '''
                }
            }
        }

        stage('Terraform validate') {
            steps {
                dir('Terraform') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform plan') {
            steps {
                dir('Terraform') {
                    sh '''
                    terraform plan \
                    -var="access_key=$AWS_ACCESS_KEY_ID" \
                    -var="secret_key=$AWS_SECRET_ACCESS_KEY"
                    '''
                }
            }
        }

        stage('Terraform apply/destroy') {
            steps {
                dir('Terraform') {
                    sh '''
                    terraform ${action} --auto-approve \
                    -var="access_key=$AWS_ACCESS_KEY_ID" \
                    -var="secret_key=$AWS_SECRET_ACCESS_KEY"
                    '''
                }
            }
        }
    }

    post {
        success {
            echo '✅ Terraform execution completed successfully!'
        }
        failure {
            echo '❌ Terraform execution failed! Check the logs.'
        }
    }
}

```
SSH  into  monitoring-server ec2 instance using the key terra.pem  ( dont forget this chmod +x terra.pem ) dont forget that u downloaded that .pem file in mac not utm 

* monitoring-server -> security -> security-groups -> add inbound rules to allow ports for grafana  and all exporters 
* clone the repo or else copy the grafana-centos.sh into this ec2 instance and run the script

``` bash
chmod +x grafana-centos.sh
sh grafana-centos.sh
```
* grafana is accessible at port 3000
``` bash 
http://<monitoring-server-ip>:3000
email or username : admin
password : admin
```
  
** NOW DOWNLOAD PROMETHEUS AND EXPORTERS **

* Go to this website and download required  exporters 

   ``` bash
  https://prometheus.io/download/
   ```

  * prometheus :
  ``` bash
  # 1. Download
  wget https://github.com/prometheus/prometheus/releases/download/v2.54.1/prometheus-2.54.1.linux-amd64.tar.gz

  # 2. Extract
  tar -xvzf prometheus-2.54.1.linux-amd64.tar.gz

  # 3. Move into folder
  cd prometheus-2.54.1.linux-amd64

  # 4. Run Prometheus
  ./prometheus &
   ```
  * Node Exporter
  ``` bash
  # Download
  wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz

  # Extract
  tar -xvzf node_exporter-1.8.1.linux-amd64.tar.gz

  # Enter folder
  cd node_exporter-1.8.1.linux-amd64

  # Run node exporter
  ./node_exporter &
  ```
  * Alertmanager
  ``` bash
  # 1. Download
  wget https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz

  # 2. Extract
  tar -xvzf alertmanager-0.27.0.linux-amd64.tar.gz
 
  # 3. Enter folder
  cd alertmanager-0.27.0.linux-amd64

  # 4. Run Alertmanager
  ./alertmanager &
   ```
  * Blackbox Exporter
  ``` bash
  # 1. Download
   wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.25.0/blackbox_exporter-0.25.0.linux-amd64.tar.gz

  # 2. Extract
  tar -xvzf blackbox_exporter-0.25.0.linux-amd64.tar.gz

  # 3. Enter folder
  cd blackbox_exporter-0.25.0.linux-amd64

  # 4. Run blackbox exporter
  ./blackbox_exporter &
  ```
  * Pushgateway
  ``` bash
   # 1. Download
  wget https://github.com/prometheus/pushgateway/releases/download/v1.9.0/pushgateway-1.9.0.linux-amd64.tar.gz

  # 2. Extract
  tar -xvzf pushgateway-1.9.0.linux-amd64.tar.gz

  # 3. Enter folder
  cd pushgateway-1.9.0.linux-amd64

  # 4. Run Pushgateway
  ./pushgateway &
  ```

  * PORTS :
``` bash
  
Prometheus	     ->   9090
Node Exporter   ->   9100  ( exposes metrics at http://< server-ip or ec2 ip >:9100/metrics ) 
Alertmanager	   ->   9093
Blackbox Exporter	-> 9115
Pushgateway	    ->   9091
 ``` 
INSTALL NET-TOOLS 
``` bash
sudo yum install net-tools -y   or  sudo apt install net-tools -y
netstat -tulnp
```
* Now u have to add thhis blackbox-exporter to the targets of promethues to get the metrics
``` bash
cd prometheus-linux-amd64   #  ls to get this file name correctly 
ls -l
nano peomethues.yml       # check the file clearly it is just an sample one 
```
add this in the scrape_configs : ( for black box ) 

``` bash
- job_name: 'blackbox'
    metrics_path: /probe
    params:
      module: [http_2xx]  # Look for a HTTP 200 response.
    static_configs:
      - targets:
          - http://prometheus.io      # Target to probe with HTTP.
          - http://< application running in docker - IP >:<port number -3000>     # Target to probe with HTTPS.
          - http://my-app-alb.ap-south-1.elb.amazonaws.com        # application running in eks -loadbalancer external IP
    relabel_configs:
      - source_labels: [__address__]
        target_label: __param_target
      - source_labels: [__param_target]
        target_label: instance
      - target_label: __address__
        replacement: 13.232.214.2:9115  # blackbox exporter's running IP 
```
``` bash
 - http://my-app-alb.ap-south-1.elb.amazonaws.com
                    OR
 - http://hotstar.cloudaseem.com:443
```
for remaining exporters : ( no need of application url as these monitors machine itself )


Prometheus and Node Exporter are running on the SAME EC2 machine then 
targets: ['localhost:9100']
``` bash
- job_name: 'node_exporter'
    static_configs:
      - targets: ['localhost:9100']

  # Alertmanager
  - job_name: 'alertmanager'
    static_configs:
      - targets: ['localhost:9093']

  # Pushgateway
  - job_name: 'pushgateway'
    static_configs:
      - targets: ['localhost:9091']
```

``` bash
sudo systemctl restart prometheus
```
           OR 
 ``` bash
  ps -ef | grep prometheus
  kill -9 <PID>
  cd /tmp/prometheus-*
  ./prometheus &
 
```
* go to promethues (http://< server-ip or ec2 ip >:9090 )  -> targets -> u can find the state of these exporters

**  CONNECTING PROMETHEUS TO GRAFANA ** 

* go to grafana (http://<monitoring-server-ip>:3000) -> Data sources -> Add data source -> Prometheus -> click on connection and enter the url of prometheus -> save and test

* grafana -> Dashboards -> new dashboard -> import -> click on the grafana dashboards link -> search blackbox_exporter -> open it and copy the ID -> go back and pate the ID and click LOAD -> select the prometheus data source that we added before -> Import

* Same for the nodeport exporter -> search ,copy and paste -> load


** FINAL STEP (Destroy the resoures created ) ** 

* Go to jenkins and build it with destroy parameter ( it will delete the created resources using terraform ) -> Monitoring server is deleted 
* Delete the created eks cluster
``` bash
eksctl delete cluster \
  --name my-cluster \
  --region ap-south-1
```

* go to aws -> instances ->click  stopped instances  -> terminate all of them 


