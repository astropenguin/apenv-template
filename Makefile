# Makefile

.PHONY: template-help
template-help:
	@echo "Usage:"
	@echo "    make:            show this help and exit"
	@echo "    make initialize: link and then restore"
	@echo "    make finalize:   backup and then unlink"
	@echo "    make link:       help string of link"
	@echo "    make unlink:     help string of unlink"
	@echo "    make restore:    help string of restore"
	@echo "    make backup:     help string of backup"

# aliases

.PHONY: initialize
initialize: template-link
initialize: template-restore

.PHONY: finalize
finalize: template-backup
finalize: template-unlink

.PHONY: link
link: template-link

.PHONY: unlink
unlink: template-unlink

.PHONY: restore
restore: template-restore

.PHONY: backup
backup: template-backup

# targets

.PHONY: template-link
template-link:
	@echo link!

.PHONY: template-unlink
template-unlink:
	@echo unlink!

.PHONY: template-restore
template-restore:
	@echo restore!

.PHONY: template-backup
template-backup:
	@echo backup!