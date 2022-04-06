# nanban
A developer friendly UNVT Dockerfile based on Ubuntu/Intel

# use
```zsh
docker run -ti --rm -v $(pwd):/root/work unvt/nanban
```

vp-optimizer is not available in the recent upgrade.
Please use unvt/docker:12 to use vp-optimizer with the nodejs 12 environment. (nodejs 12's end of life is April 2022.)

use unvt/nanban:latest (or unvt/nanban:16) for nodejs 16

# build
```zsh
rake build
```

# packaging policy
This is a developer friendly build. If you need anything to be added, please make a pull request for that. 

# about the name
The name `nanban` is from Tamil language. It means friend.

# Update History
2022 March: Upgrade the nodejs version to 16 as nanban:16. Added unvt/kata and unvt/itoma.   
(installation of vt-optimizer is suspended because it somehow prevent Docker image creation.)



