RM = rm -rf
MKDIR = mkdir
CP = cp -r
# CPR = cp -r
HOME = ~/
EMACS = $(HOME)/.emacs.d
ERGO = $(EMACS)/ergoemacs
3RD = $(EMACS)/3rd
TARGET = init.el
ERGOMIRROR = https://github.com/0nin/ergoemacs_mirror.git
HELPTEXT = "make install -- create .emacs.d \n make clean -- delete .emacs.d \n make help -- show this text \n"

install:
	$(MKDIR) $(EMACS)

	$(CP) $(3RD) $(EMACS)
	$(CP) $(TARGET) $(EMACS)

	cd ~/.emacs.d/

	git clone ERGOMIRROR 
	$(CP) $(ERGO) $(EMACS)/ergoemacs

clean:
	$(RM) $(EMACS)
	$(RM) $(HOME)/.emacs

help:
	echo $(HELPTEXT)
