src_dir := $(shell pwd)

install:
	@echo "Add this to your Bash profile (usually ~/.bashrc on Linux and ~/.bash_profile on MacOS)\n\tsource $(src_dir)/goto\n\nSpecify the directories that contain your projects via the GOTOPATH environment variable. To specify multiple directories, separate them via : (colon), e.g.:\n\texport GOTOPATH=\"$${HOME}/code:$${HOME}/sites\""
