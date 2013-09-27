###Linux Commands Cheatsheet
```sh
# Check / Kill Network Ports
sudo lsof -i -P | grep -i "listen"
kill -9 21580 # The process' number

# Open hosts file
sudo nano /private/etc/hosts

# Copy Public Key
pbcopy < ~/.ssh/id_rsa.pub

# Copy Public Key to current folder
ssh-add ~/.ssh/id_rsa

```
