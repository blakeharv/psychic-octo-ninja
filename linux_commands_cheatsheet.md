###Linux Commands Cheatsheet
```sh
# Check / Kill Network Ports
sudo lsof -i -P | grep -i "listen"
kill -9 21580 # The process' number

# Open hosts file
sudo nano /private/etc/hosts

# Public Key Stuff
pbcopy < ~/.ssh/id_rsa.pub # copy pub key to clipboard
ssh-add ~/.ssh/id_rsa      # copy pub key to current folder

# Create new file (different flavors)
echo '' > mynewfile
printf '\n' > mynewfile
touch mynewfile

# Rename file
mv oldfilename newfilename

# Create Directory
mkdir mynewdirectory

# drop text file on terminal
cat my-text-file.txt

```
