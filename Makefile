# Makefile

.PHONY: all
all:
	@echo "Usage:"
	@echo "    make:            show this help and exit"
	@echo "    make initialize: link and then restore"
	@echo "    make finalize:   backup and then unlink"
	@echo "    make link:       help string of link"
	@echo "    make unlink:     help string of unlink"
	@echo "    make restore:    help string of restore"
	@echo "    make backup:     help string of restore"

# apenv targets
TARGETS_INITALIZE += initialize
TARGETS_FINALIZE  += finalize
TARGETS_LINK      += link
TARGETS_UNLINK    += unlink
TARGETS_RESTORE   += restore
TARGETS_BACKUP    += backup

# targets
.PHONY: confirm
confirm:
	@read -p "press any key to continue: "

.PHONY: initialize
initialize: confirm link restore

.PHONY: finalize
finalize: confirm backup unlink

.PHONY: link
link: confirm
	@echo link!

.PHONY: unlink
unlink: confirm
	@echo unlink!

.PHONY: restore
restore: confirm
	@echo restore!

.PHONY: backup
backup: confirm
	@echo backup!