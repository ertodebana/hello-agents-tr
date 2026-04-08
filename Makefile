.PHONY: serve build

# Local preview via Podman (no Hugo binary needed)
# Access at http://localhost:1313
serve:
	podman run --rm -it \
		-v $(PWD)/site:/src:Z \
		-p 1313:1313 \
		docker.io/klakegg/hugo:ext-alpine \
		server --buildDrafts --bind 0.0.0.0

# Build static site locally
build:
	podman run --rm \
		-v $(PWD)/site:/src:Z \
		docker.io/klakegg/hugo:ext-alpine \
		--minify
