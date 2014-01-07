### GIT Cheatsheet

```sh
# Set your name
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

# Turn colors on
git config --global color.ui true

# 'git push' only pushes the current branch, not all of them
git config --global push.default current

# Checking out and Creating New Branches
# Step 1
git checkout master        # change head to master
git pull origin master     # update local master with remote master
# Step 2
git branch mynewbranch       # create the branch
git checkout mynewbranch     # switch to the branch
# OR
git checkout -b mynewbranch  # create and switch in one command
# Step 3
git push origin mynewbranch  # push your new branch to the remote repository
git branch --set-upstream mynewbranch origin/mynewbranch  #set the remote location

# Check out existing branch that doesn't have the upstream set
git checkout -b thebranch --track origin/thebranch

# Push to production master branch from local development branch
git push production development:master
 
# Rename a branch
git branch -m old_branch new_branch

# Check last so many references
git reflog -10
git checkout 9c9ace82
# http://stackoverflow.com/questions/2364978/why-do-i-have-to-hit-q-at-the-end-of-git-log

# Stash commands
git stash
git stash list
git stash apply
git stash apply stash@{0}
git stash drop stash@{0}
More Stash: http://git-scm.com/book/en/Git-Tools-Stashing
 
git pull
git pull origin master
git pull --rebase origin master
 
git checkout master
git merge master --no-ff
git rebase master
git rebase origin/master
 
# Amend a commit
git commit --amend
 
# Revert commit but keep files staged
git reset --soft HEAD^

# Article on squashing commits:
# http://gitready.com/advanced/2009/02/10/squashing-commits-with-rebase.html

# Search through your history
git log -S<search term>
git log -Saws_secret_key # did this repo ever have an aws_secret_key?


# Unstage staged files
git reset
 
# Discard edited, unstaged files
git checkout -- .
 
# Blow away last commit
git reset --hard HEAD^
 
# Remove a commit from the history
git rebase --onto commithash^ commithash HEAD
 
# Stage deleted files
git add -u
git add --update
 
# Remove new, untracked files
git clean -f     # just files
git clean -d -f  # files and directories
git clean -n     # dry run flag (or '--dry-run')
 
# Delete a remote branch (2 flavors)
git push origin --delete myBranch
git push origin :myBranch
 
# Delete local branch
git branch -d the_local_branch
 
# Hide an edited file from GIT
git update-index --assume-unchanged <file>
git update-index --no-assume-unchanged <file>
# OR
git update-index --skip-worktree <file>
git update-index --no-skip-worktree <file>
 
 
 
git fetch                         # refresh local with any new changes without integrating them
git branch -a | grep search_term  # search for branches with 'search_term' in the name
git add -i                        # interactive file adding for the command line
 
 
 
# Clean up old tracking branches on you local
# (dry-run tests it without actual removing branches)
git remote prune origin --dry-run
```
