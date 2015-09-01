RM = rm -rf
MKDIR = mkdir
CP = cp -R
#HOME = /home/onin
EMACS = $(HOME)/.emacs.d
ERGO = $(EMACS)/ergoemacs
3RD = 3rd
TARGET = init.el
ERGOMIRROR = https://github.com/0nin/ergoemacs_mirror.git
HELPTEXT = "make install -- create .emacs.d make clean -- delete .emacs.d make help -- show this text"

install:
	$(MKDIR) $(EMACS)

	$(CP) ./$(3RD) $(EMACS)/$(3RD)
	$(CP) $(TARGET) $(EMACS)

	git clone $(ERGOMIRROR) $(ERGO)
	@echo Now run emacs to complete installation!

uninstall:
	$(RM) $(EMACS) $(HOME)/.emacs

help:
	@echo $(HELPTEXT)
