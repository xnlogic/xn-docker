# xn-docker

./build.sh creates the container image based on each of the base/java/jruby/datomic/torquebox layers  
./run.sh runs the created final image in a container  

The Vagrantfiles are WIP attempts at proper volume mounting which still needs work - currently there's no working method to mount files from the host machine into the containers.
