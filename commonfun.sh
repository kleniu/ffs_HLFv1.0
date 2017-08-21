#!/bin/bash

function _rmc() {
        # kill all containers and remove them along with unused docker networks
        if [[ .`docker ps -qa | wc -l`. != .0. ]]; then
                docker kill $(docker ps -qa)
                docker rm $(docker ps -qa)
        fi
	# rm all images
        docker images | grep "^dev" | awk '{print $3}' | while read AA; do docker rmi -f $AA; done
        docker network prune -f
}

function _rmi() {
	docker images | grep "^hyperledger" | awk '{print $3}' | while read AA; do docker rmi -f $AA; done
}
