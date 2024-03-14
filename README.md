# Iris System Recruitments 2024
## Submission By Sricharan Sridhar (221IT066)

## Add your files

To clone this repo and push files,

```
cd existing_repo
git remote add origin https://gitlab.com/sricharan2901/iris-sysrecs
git branch -M main
git push -uf origin main
```

## Tasks Completed

* [X] Task 1
* [X] Task 2
* [X] Task 3
* [X] Task 4
* [X] Task 5
* [X] Task 6
* [ ] Task 7
* [ ] Task 8


Bonus Tasks

* [ ] Task 1
* [ ] Task 2
* [ ] Task 3

## Task 1 - Packing the rails application in a docker container image

* Created a Dockerfile and built all the dependencies required from the Gemfile.
* Built a ruby:3.0.2 image initially, so I rebuilt the image for ruby:2.7.8 .
* Faced a lot of errors initially with the build, but eventually I changed versions of gems installed and the image was built.
* I was able to run a container on the image created.

## Task 2 - Launching the app in a container and linking it to a DB

* For this, I ran a container initially on the image created, and it ran successfully.
* I used the latest official image of mysql for this.
* I used docker compose to link the DB and the application.
* For a long time I faced errors with launching the application, and then problems with dependencies and the DB itself.
* After making changes in the Dockerfile and referring to the database.yml file, I was able to rectify it.
* I also had to install nodejs for the application to show the actual pages.
* The app was available on port 8080 and not 3000.

## Task 3 - Using a NginX load balancer to recieve requests for the app

* For this, I used the official docker latest image of nginx.
* I created a configuration file to be able to listen from ports and balance accordingly.
* I also configured it as reverse proxy to the rails application.
* I was able to hear from port 8080 and now the app was able to be accessed only through the load balancer.

## Task 4 - Balancing requests among 3 containers of the app with a single DB

* 