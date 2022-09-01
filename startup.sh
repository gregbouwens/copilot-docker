#!/bin/bash

# Exit if the secret wasn't populated by the ECS agent
[ -z $GHOST_SECRET ] && echo "Secret GHOST_SECRET not populated in environment" && exit 1

export database__connection__host=`echo $GHOST_SECRET | jq -r '.host'`
export database__connection__port=`echo $GHOST_SECRET | jq -r '.port'`
export database__connection__database=`echo $GHOST_SECRET | jq -r '.dbname'`
export database__connection__user=`echo $GHOST_SECRET | jq -r '.username'`
export database__connection__password=`echo $GHOST_SECRET | jq -r '.password'`