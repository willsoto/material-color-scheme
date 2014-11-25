DARK_THEME = "Material.tmTheme"
LIGHT_THEME = "Material-light.tmTheme"

DARK_LOCATION = "./atom/"
LIGHT_LOCATION = "./atom-material-light/"

convert:
	apm init --theme $(DARK_LOCATION) --convert $(DARK_THEME)
	apm init --theme $(LIGHT_LOCATION) --convert $(LIGHT_THEME)
	rm $(DARK_LOCATION).gitignore $(DARK_LOCATION)CHANGELOG.md $(DARK_LOCATION)index.less $(DARK_LOCATION)package.json $(DARK_LOCATION)README.md
	rm $(LIGHT_LOCATION).gitignore $(LIGHT_LOCATION)CHANGELOG.md $(LIGHT_LOCATION)index.less $(LIGHT_LOCATION)package.json $(LIGHT_LOCATION)README.md
	git add $(DARK_LOCATION) $(LIGHT_LOCATION) --all
	git commit -m "Update atom theme"

release:
	apm publish minor
