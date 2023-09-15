# GitLab-Docker

You own DevOps Lab running on docker

To obtain the root password you should run:

```
docker exec  -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```

**NOTE**: The password file will be automatically deleted in the first reconfigure run after 24 hours.

```
docker exec -it gitlab gitlab-rake "gitlab:password:reset[root]"
```

**NOTE**: Be patient; don't be surprised if it takes more than a few seconds before the "Enter password:" prompt shows up.

**For docker compose, just run the following command within the folder where the docker-compose.yml is located:**

```
docker-compose up -d
```
or
```
docker compose up -d
```

**NOTE**: This docker-compose.yml includes the GitLab instance and a runner, once deployed, make sure to update and run gitlab-runner-register.sh to register the runner.

**NOTE**: Change both hostname and external_url under the gitlab container to match the IP of the docker host.
