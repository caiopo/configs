function docker-clean
    docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi
end
