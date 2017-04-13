FROM ubuntu:14.04

COPY ./entrypoint.sh /

#Make the shell script file as a Entrypoint for container
ENTRYPOINT ["/entrypoint.sh"]


RUN apt-get update

# Install software git 
RUN apt-get install -y git

#Clone the Git Repository
RUN git clone https://github.com/nishitasheth93/docker_exercise_set4

#Create a directory “Folder_1”
RUN mkdir Folder_1

#Create a directory under above folder as “Folder_1_1"
RUN mkdir /Folder_1/Folder_1_1

#Create a directory under above folder as “Folder_1_1_1”
RUN mkdir /Folder_1/Folder_1_1/Folder_1_1_1

#Make the “Folder_1_1_1”  ass Working Directory
WORKDIR /Folder_1/Folder_1_1/Folder_1_1_1

#Copy the Shell script file from Git folder to the current working directory … “Folder_1_1_1”
RUN scp /docker_exercise_set4/entrypoint.sh /Folder_1/Folder_1_1/Folder_1_1_1
