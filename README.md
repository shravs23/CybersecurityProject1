## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://github.com/shravs23/CybersecurityProject1/blob/main/Diagrams/VirtualNetwork%20(1).png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  https://github.com/shravs23/CybersecurityProject1/blob/main/Ansible/install-elk.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures protection from DDoS (Denial of Service) attacks by redirecting traffic. The advantage of a jump box is to maintain and restrict access from a 
single "machine" that can be monitored. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the system and system files.
 Filebeat watches for any changes to files on the system. It sends logs of what was changed and when it was changed. 
 Metricbeat records metrics and statistics from an operating system.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| DVWA VM1 | Server   | 10.0.0.5   | Linux            |
| DVWA VM2 | Server   | 10.0.0.6   | Linux            |
| Elk VM1  | Server   | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
  Local Home Machine with IP of 104.148.253.250

Machines within the network can only be accessed by the jump box.
  Jumpbox VM with IP of 10.0.0.4 is only machine with access to the Elk VM 

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 104.148.253.250 Home |
| DVWA VM1 | No                  | 10.0.0.4             |
| DVWA VM2 | No                  | 10.0.0.4             |
| Elk VM1  | No                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
  you can use the multiple lines of code in one playbook to deploy on any number of servers/machines with a single command. 

The playbook implements the following tasks:
- Install Docker
- Install Pip
- Install Docker Python Module
- Use More Memory
- Download and Launch Docker Elk Container
- Enable Service Docker on Boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

https://github.com/shravs23/CybersecurityProject1/blob/main/Images/Project1Screenshots.PNG

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- DVWA VM1 10.0.0.5
- DVWA VM2 10.0.0.6

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat allows us to view changes to any files on the server/machine. An example we would expect to see is when users log on and off in the audit logs. 
- Metricbeat allows us to view metrics and statistics. An example we would expect to see is CPU and memory being used with services running on the server. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

- Which file is the playbook? Where do you copy it?
  The playbook is the install-elk.yml. 
      
- Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
       You update the hosts file in the /etc/ansible folder to specify machines you want to run the playbook on. You can specify which machine you want to install the Elk server on versus Filebeat by changing the hosts section in the playbook to either elk or webservers. 
       
- Which URL do you navigate to in order to check that the ELK server is running?
       -http://[your.VM.IP]:5601/app/kibana (public ip of your ELK VM)

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc.:
    - ssh username@jumpboxip, 
    - sudo docker container list -a,
    - sudo docker start dockername,
    - sudo docker attach dockername,
    - cd /etc/ansible,
    - nano hosts (list machine IPs you want to run playbook on in this file),
    - nano yourplaybookname.yml (list which commands you want this playbook to run in this file, this is the actual playbook file),
    - sudo ansible-playbook yourplaybookname.yml (command to run the playbook you created),
