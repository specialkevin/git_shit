git_files := $(shell find . -name 'git-*' -exec basename {} \;)
pwd := $(shell pwd)

install:
	@for file in $(git_files); do \
		echo Linking $(pwd)/$$file ; \
		ln -sf $(pwd)/$$file ~/bin/$$file ; \
	done
