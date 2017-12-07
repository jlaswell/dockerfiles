# A lot of this is a straight rip-off from @jessfraz, because it's that awesome.

# Set an output prefix, which is the local directory if not specified
PREFIX?=$(shell pwd)

AUTHOR := jlaswell

.PHONY: all
all: composer

.PHONY: composer
composer: ## Build composer.
	@echo "Building and pushing $@."
	./build.sh composer

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

