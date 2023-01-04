# nanban
A developer friendly UNVT Dockerfile based on Ubuntu/Intel

# use
```zsh
docker run -ti --rm -v $(pwd):/root/work unvt/nanban
```

vp-optimizer is not available in the recent upgrade.
Please use unvt/docker:12 to use vp-optimizer with the nodejs 12 environment. (nodejs 12's end of life is April 2022. So, this is not recommended.)

use unvt/nanban:latest (or unvt/nanban:18) for nodejs 18

# build
```zsh
rake build
```

# packaging policy
This is a developer friendly build. If you need anything to be added, please make a pull request for that. 

# about the name
The name `nanban` is from Tamil language. It means friend.

# Update History
2022 March: Upgraded the nodejs version to 16 as nanban:16. Added unvt/kata and unvt/itoma.   
(installation of vt-optimizer is suspended because it somehow prevent Docker image creation.)

2023 January: Upgraded the nodejs version to 18. Replaced mapbox/tippecanoe to felt/tippecanoe.


