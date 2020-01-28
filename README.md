# Start Script

## Problem

Having to navigate thgrough your linux machine to start certain programs with a mouse is labouious time consuming and requires you
to touch the mouse (*eww*).


## Solution

This script has the ability to launch any programme from the terminal home directory by entering a keyword following the bash script


## How to use
I would reccomend that this script be cloned into your home directory so it is readily available when you open a new terminal window. 
The first command in this tutorial will assume that you want this installed in your home directory.  

`cd`  
`git clone https://github.com/matthew-64/bash-start-script.git`  
`rm .git` (This line is optional)

### Start a program
`./start.sh <enter pre programmed name (e.g. pycharm)>`

### Add or remove program
`vim ./start.sh`  
edit the `commands` variable 

### See what programs can be launched
`./start.sh`  
The script will see that there is no start program so will list all the possible programs that is can start.

Current output:  
`Use one of the following shortcuts:`  
`intellij`  
`pycharm`  
`temp`  
`shutdown`  
`restart`  

