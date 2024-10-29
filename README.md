# k8s_resources_task
HW5 - full homework requirments can be found in [task.md](task.md)

### task to-do list
1- create a docker image with radicale:
    a - write docker file:
        - use lightweight (such as alpine)
        - expose ports
        - use env var to insert the credintials config
    b- upload to dockerhub with proper tagging
    
2- deploy app in k3s
    a- write the multi file to run it in k3s , including:
        - deployment 
        - service
        - ingress
        - PV
3- finish readme file 

## instructions:

part1:
- docker build & run commands :
    1. docker buildx build -t radicale_k8s:v1 . --build-arg USER=<username>  --build-arg PASSWD=<password> --no-cache
    2. docker run radicale_k8s:v1
    3. connect to radicale url : http://localhost:5232/    with the above user
![image](https://github.com/user-attachments/assets/e110bf0b-82f1-45e5-a1b0-f5ed5291819e)

part2:  
- run : kubectl create namespace radicale
- sudo kubectl apply -f .


dockerhub image url: https://hub.docker.com/repository/docker/annageryes/radicale_k8s/general

radicale url : http://localhost:5232/    







