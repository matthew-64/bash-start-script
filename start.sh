#!/bin/bash

user_input=$1
declare -A commands=(
	["intellij"]="/home/pi/Software/Coding/Intellij/idea-IC-191.7479.19/bin/idea.sh"
	["pycharm"]="/home/pi/Software/Coding/PyCharm/pycharm-community-2019.1.3/bin/pycharm.sh"
	["temp"]="vcgencmd measure_temp")

function show_keys() {
	echo "Use one of the following shortcuts:"
	for x in ${!commands[@]}
	do
		echo $x
	done
}

function find_command() {
	run_cmd=""
	for x in ${!commands[@]}
	do
		if [[ $1 == $x ]]; then
			run_cmd=${commands[$x]}
			echo "running: ${run_cmd}"
			eval ${run_cmd}
		fi
	done
	if [ "${run_cmd}" == "" ]; then
		show_keys
	fi

}

if [ "$#" == "0" ]; then
	show_keys	
else
	echo TEST
	find_command $1
fi
