src_dir := $(shell pwd)
bin_dir := /usr/local/bin
completion_dir := /etc/bash_completion.d
home := $(shell echo ${HOME})
ostype := $(shell echo ${OSTYPE})
post_install_message=All done.\nYou can now specify the directories that contain your projects via the GOTOPATH environment variable. To specify multiple directories, separate them via : (colon), e.g.:\n\texport GOTOPATH="$${HOME}/code:$${HOME}/sites"
bash_user_script := $(home)/.bashrc

install:
		@if ! [ -f $(completion_dir)/goto ]; then sudo ln -s $(src_dir)/goto.completion $(completion_dir)/goto ; fi
		@if ! [ -f $(bin_dir)/goto ]; then sudo ln -s $(src_dir)/goto $(bin_dir)/goto ; fi
		@echo -e "$(post_install_message)"
