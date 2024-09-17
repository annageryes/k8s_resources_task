# k8s_resources_task
HW5 - full homework requirments can be found in task.md

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


docker buildx build -t radicale_k8s:test . --build-arg USER=user2  --build-arg PASSWD=user2 --no-cache
docker run radicale_k8s:test

    




