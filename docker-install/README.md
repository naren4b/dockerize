# Docker Introduction 

ref : https://www.youtube.com/watch?v=TvnZTi_gaNc

ref : https://www.youtube.com/watch?v=L1ie8negCjc 
# List of Questions : 
1. Why should I use Docker and what problems does it solve?
2. What's the difference between a Virtual Machine and Docker Container?
3. How does Docker work under the hood?
4. What's the difference between Docker Community and Enterprise Edition?
5. What's the difference between Docker Toolbox & Docker for Mac / Windows?
6. How can I install Docker and perform a "Hello World"?
7. What is a Docker image and Docker container?
8. How does the Docker build process work?

# 3 Biggest win when you use docker 
## 1. Saving Time and Money (resources) 
 1. VM takes time to come up 
 2. Each VM comes up with their own os , and occupie lot of sapace which is a waste 
 ## 2. Portabilty 
  1. build once and and deploy evenrywhere  (docker enabled).
     - mostly because of version mismatch , some project may not work in your machine but working the author machine [dependency(os) ]
  2. Docker runs your application in a controlled environment 
 ## 3. Pick the right tool for the Application  
   1. Less burdens(dependecies are no longer burdens) , more flexible , Choose the best fit version of OS and technology suites for the application
   2. You can have multiple version of same application running in the same docker
   3. That encourages to use new technology without affecting anything else , managing microserices became easy  
   4. Freedom and flexibility to choose any infrastructure 
 
 # History
   1. 1 Hardware -  1 OS - App Server/ DB server  (set up may take in hours)
   2. bunch of Hardwares together used to create a VM and each VM can be web server or db server etc (set up take in minutes )
   3. LXC little faster that VM 
   4. Docker container 
 # Virtual Machines vs Docker 
 ![docker vs vm](https://github.com/NarendranathPanda/docker-install/blob/master/img/docker-vs-vm.PNG)
  ## Virtual machine 
  ### Hypervisor sits in between Infrastructure/Host OS and Guest OS  
        There are two types of hypervisor 
         1. Type-1 Directly link to the infrastructure (Hyperkit(Mac OSX)/ Hyper-V (Win)/ Kvm (linux) [efficient]
         2. Type-2 Runs as an app on the host os (VirtualBox/VmWare) 
  ### Guest OS 
  ### Binaries / Libraries 
  ### App 
    
    ### Isolates systems
    ### Starts in minutes
    ### Wastes resources 
#   In virtual machine host os can not know anything about host , but in case of container , Host OS can get to know everything about the containers 
  ## Docker
  ### Docker Daemon
  ### Binaries / Libraries 
    ### Isolates applications
    ### Starts in milliseconds 
    ### Saves resources  

![layers - docker vs vm](https://github.com/NarendranathPanda/docker-install/blob/master/img/docker-vs-vm_layers.PNG)
 
 # Docker Architecture 
   ![layers - docker vs vm](https://github.com/NarendranathPanda/docker-install/blob/master/img/docker-arch.PNG)
   ![layers - docker vs vm](https://github.com/NarendranathPanda/docker-install/blob/master/img/docker-arch-2.PNG)
   
 # Docker Release (CE vs EE )
 ## Docker CE: Community Edition
  ### Free and open source
  ### Aimed for developers 
  ### DIY (do it yourself ) Ops team  
    ### Version release 
     1. Edge release (1 month) (security , bug)
     2. Stable release (3 months) (security , bug , features)
  ## Docker EE : Enterprise Edition (CE + goodies from docker)  + Money  
  ### For mission critical apps
  ### certified images and plugins
  ### docker datacenter 
  ### Vulnerability scans
  ### Official support  
    ### Version release 
     1. Querterly release  support last for 1 year 
     
   
   
