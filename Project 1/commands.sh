Jenkins CI/CD Pipeline - SonarQube, Docker, Github Webhooks on AWS

https://www.youtube.com/watch?v=361bfIvXMBI

Push the code into github

Create a Three EC2 Machine
Jenkins & Docker t2 Micro
SonarQube t2 Medium
Allow all the ports



Jenkins
sudo apt update -y
sudo hostnamectl set-hostname jenkins
/bin/bash
sudo apt install openjdk-17-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl status jenkins

Copy the IP and Login to the Jenkins

New Item = Automated-Pipeline
Free style Project
Source code management= add git url | Main | Github hook trigger
Goto Github repo = Webhook = url/github-webhook/
Send everything
Build Now


SonarQube
sudo hostnamectl set-hostname sonarqube
/bin/bash
sudo apt update -y
sudo apt install openjdk-11-jre -y
sudo apt install unzip
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.3.0.82913.zip
ls/bin/linux/ls
./sonar.sh
./sonar.sh console

Copy the IP and paste url:9000
admin admin = admin123
Project Name: Onix-Website-Scan Same
Setup
with jenkins
github
Copy the Project Key: .scan
My account: Token: Sonarqube-Token | Copy and Save

Jenkins




