# This makefile will recursively install 
# all the suckless tools in the sub-
# directories. Also, providing a way 
# to recursively uninstall them.  

SUBDIRS = $(shell ls -d */)

# Installs all the tools in the present
# directory. Note that each tool has to be 
# placed in its own subdirectory. This is 
# naturally achieved when you clone the repos 
# in the main directory. 
all:
	for dir in $(SUBDIRS) ; do \
		make clean install -C  $$dir ; \
	done

# This recursively removes every suckless tool 
# which are present in the subdirectories
# of this repo. 
uninstall-all: 
	for dir in $(SUBDIRS); do \
		make uninstall -C $$dir ; \
	done

# Pass the directories containing the tools 
# to be uninstalled as arguments to the 
# uninstall target.  
uninstall: 
	for dir in $(DIRS); do \
		make uninstall -C $$dir ; \
	done
