#!/bin/bash


#the first argument is the name of the file to find and open





secondvar="find . -name $1"
vim $(secondvar) #TODO: does not recognize second var
 


#vim $(find -anme somefile.txt)

#vim `find . -name $1`
