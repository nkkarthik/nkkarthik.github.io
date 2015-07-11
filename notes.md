---
---
# Notes

## Git Tips

### Creating a bare git repository

This script will create a git repository to be used at the start of a project.

<script src="https://gist.github.com/krishnagists/4a8768c18a92f97fd0bf.js"></script>

### Run script on a commit to the git repository

Have a shell script in repo `project.git/hooks/post-receive`

Note to unset GIT_DIR; something like:

```sh
pushd temp-clone-dir
# unset is required for this to work (as it is already working with some dir)
unset GIT_DIR 
git pull
make
popd
```
