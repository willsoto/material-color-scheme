
convert:
	apm init --theme ./atom --convert Material.tmTheme
	rm ./atom/.gitignore ./atom/CHANGELOG.md ./atom/index.less ./atom/package.json ./atom/README.md
	git add atom/
	git commit -m "Update atom theme"

release:
	apm publish minor
