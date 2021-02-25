#!/bin/bash
# source ~/conf

# constants
# TIMEOUT_SECS=30

# remove from elb and wait for instance to be actually removed
# get instance id as script argument
remove_from_lb_and_wait() {
	echo "removing $1"
	
	#export the data to file
	aws elbv2 describe-target-health --target-group-arn "$TARGET_GROUP_ARN" > target-helth.json
	#Debug -view Target Health Descriptions before remove instance
    cat target-helth.json

    #check existence
	#create and array with the  instances to scan
	instances=$(jq '.[] | .' target-helth.json)
	if [[ " ${instances[*]} " == *"$1"* ]]
	then 
	    echo "found $1"
    else
        echo 'instance not found'
    fi

	#remove instance
	aws elbv2
    aws elbv2 deregister-targets \
    --target-group-arn "$TARGET_GROUP_ARN" \
    --targets Id="$1"


	#wait till actually removed

	#Debug -view Target Health Descriptions after remove  instance
    aws elbv2 describe-target-health --target-group-arn "$TARGET_GROUP_ARN" > target-helth.json
    cat target-helth.json

    # reque refactor to divided to sub functions ...
}

# insert into elb and wait for instance to be in service
insert_into_lb_and_wait() {
	echo "inserting $1"	
	#add instance
	
	#wait till inservice
}

# deploy 
deploy_instance() {
	echo "deploying $1"
	# update ~/index.html with your name
	# to update use: sshInstance.sh INSTANCE_ID COMMAND
}

#main
main() {
    # load variables inside conf
	echo "ELB URL is: $ELB_URL"
	#get the list of instances from the LB

	#loop over all instances in the LB (no need to change)
	# for current in $list; do
	# 	echo now at: $current
	# 	remove_from_lb_and_wait $current
 	# 	deploy_instance $current
	# 	insert_into_lb_and_wait $current
	# done
}

main
