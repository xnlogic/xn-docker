#! /bin/sh

# Run to pull latest changes from the Docker repos into the local repo for development

declare -a repos=("base" "java" "jruby" "torquebox" "datomic")

for i in "${repos[@]}"
do
    git pull -s subtree "$i" master
done

echo "Please commit to save merged subtree updates"
