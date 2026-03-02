.PHONY: help init update clean

help:
	@echo "Available commands:"
	@echo "  make init      - Initialize project with submodules"
	@echo "  make update    - Update submodules to latest version"
	@echo "  make clean     - Clean build artifacts"

init:
	@bash scripts/init.sh

update:
	@bash scripts/update.sh

clean:
	rm -rf build/
	find . -type d -name __pycache__ -exec rm -rf {} +
