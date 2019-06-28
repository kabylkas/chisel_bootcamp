new:
	git clone https://github.com/freechipsproject/chisel-template.git
	mv chisel-template $(name)
	echo "" > $(name)/README.md
	rm -rf $(name)/.git
