
convert:
	apm init --theme ./atom --convert Material.tmTheme
	rm ./atom/.gitignore ./atom/CHANGELOG.md ./atom/index.less ./atom/package.json ./atom/README.md
	git xa "Update atom theme"

release:
	apm publish minor
