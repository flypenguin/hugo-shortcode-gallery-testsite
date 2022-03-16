serve:
	hugo serve
.PHONY: serve

draft:
	hugo serve -DF
.PHONY: draft


vendor:
	hugo mod vendor
.PHONY: vendor


reset:
	rm go.*
	hugo mod init shortcode-gallery-testsite.netlify.com
	hugo mod get
	hugo mod clean
	hugo mod vendor
.PHONY: reset
