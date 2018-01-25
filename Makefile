src_dir := $(shell pwd)
completion_dir := /etc/bash_completion.d/
home := $(shell echo ${HOME})
ostype := $(shell echo ${OSTYPE})
ifeq ($(ostype), 'darwin')
		completion_dir_prefix := $(brew --prefix)
		bash_user_script := $(home).bash_profile
else
		bash_user_script := $(home)/.bashrc
endif
add_func_to_bash_user_script := $(shell \grep -o 'source $(src_dir)/goto_func.sh' $(bash_user_script))

post_install_message=All done.\nYou can now specify the directories that contain your projects via the GOTOPATH environment variable. To specify multiple directories, separate them via : (colon), e.g.:\n\texport GOTOPATH="$${HOME}/code:$${HOME}/sites"

install:
		@if ! [ -f $(completion_dir_prefix)$(completion_dir)goto ]; then sudo ln -s $(src_dir)/goto $(completion_dir_prefix)$(completion_dir) ; fi
		@grep 'source $(src_dir)/goto_func.sh' $(bash_user_script) ; if [ $$? -eq 1 ]; then echo "source $(src_dir)/goto-func.sh" >> $(bash_user_script) ; fi
		@echo -e "$(post_install_message)"
