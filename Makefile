src_dir := $(shell pwd)
bin_dir := /usr/local/bin
completion_dir := /etc/bash_completion.d
home := $(shell echo ${HOME})
ostype := $(shell echo ${OSTYPE})
post_install_message=All done.\nYou can now specify the directories that contain your projects via the GOTOPATH environment variable. To specify multiple directories, separate them via : (colon), e.g.:\n\texport GOTOPATH="$${HOME}/code:$${HOME}/sites"
bash_user_script := $(shell if [ -f "${HOME}/.bashrc.local" ]; then echo "${HOME}/.bashrc.local" ; else echo "${HOME}/.bashrc" ; fi)
needs_sourcing := $(shell (\grep -q "source $(src_dir)/goto" $(bash_user_script) && echo 'no') || echo 'yes')

install:
		@if ! [ -f $(completion_dir)/goto ]; then sudo ln -s $(src_dir)/goto.completion $(completion_dir)/goto ; fi
ifeq ('$(needs_sourcing)','yes')
		@echo "source $(src_dir)/goto" >> $(bash_user_script)
endif
		@echo -e "$(post_install_message)"
