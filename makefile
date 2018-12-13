all: dotfiles

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(PWD) -name ".*" -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file ~/$$f; \
	done;
