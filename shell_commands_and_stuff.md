#Shell Commands and Stuff

```sh
#Check / Kill Network Ports
sudo lsof -i -P | grep -i "listen"
kill -9 21580 # The process' number

#Copy Public Key
pbcopy < ~/.ssh/id_rsa.pub

#Copy Public Key to current folder
ssh-add ~/.ssh/id_rsa

#Push to production master branch from local development branch
git push production development:master

# Run only tagged scenarios
cucumber --tags @tagname

# Run everything but tagged scenarios
cucumber --tags ~@tagname

```
