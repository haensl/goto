src_dir := $(shell pwd)

install:
	@echo "To use goto in your bash you'll likely have to source it in your profile (usually ~/.bashrc on Linux and ~/.bash_profile on MacOS)\n\tsource $(src_dir)/goto\n\nSpecify the directories that contain your projects via the GOTOPATH environment variable. To specify multiple directories, separate them via : (colon), e.g.:\n\texport GOTOPATH=\"$${HOME}/code:$${HOME}/sites\""
