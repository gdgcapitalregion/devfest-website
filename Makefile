.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: ## runs a local version: make cmd=server|wilson dev
	docker run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve