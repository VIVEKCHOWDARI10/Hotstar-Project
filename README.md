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
IF pipeline fails saying architecture not match ,then add manually 

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
        jdk 'jdk'
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
                sh "trivy image VIVEKCHOWDARI10/hotstar:latest > trivyimage.txt" 
            }
        }
        stage('Deploy to container'){
            steps{
                sh 'docker run -d --name hotstar -p 3000:3000 vivekchowdari/hotstar:latest'
            }
        }

    }
```

