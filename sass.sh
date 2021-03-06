#!/bin/bash
mkdir sass
cd sass
touch main.scss
mkdir base components helpers layout pages vendors
cd base
touch _normalize.scss _typography.scss _all.scss
echo -e "@import 'normalize';\n@import 'typography';" > _all.scss
cd ../components
touch _buttons.scss _navigation.scss _all.scss
echo -e "@import 'buttons';\n@import 'navigation';" > _all.scss
cd ../helpers
touch _vars.scss _mixins.scss _functions.scss _helpers.scss _all.scss
echo -e "@import 'vars';\n@import 'mixins';\n@import 'functions';\n@import 'helpers';" > _all.scss
cd ../layout
touch _header.scss _footer.scss _forms.scss _grid.scss _all.scss
echo -e "@import 'grid';\n@import 'header';\n@import 'footer';\n@import 'forms';\n" > _all.scss
cd ../pages
touch _home.scss _contact.scss _about.scss _all.scss
echo -e "@import 'home';\n@import 'contact';\n@import 'about';" > _all.scss
cd ../vendors
touch _all.scss
read -p "Do you want to install bourbon? (y/n): " bourbon
if [ $bourbon = "y" ]
then
    bourbon install
    echo -e "@import 'bourbon/bourbon';\n" > _all.scss
fi
read -p "Do you want to install neat? (y/n): " neat
if [ $neat = "y" ]
then
    neat install
    echo -e "@import 'neat/neat';\n" >> _all.scss
fi
cd ..
echo -e "@import 'vendors/all';\n@import 'components/all';\n@import 'helpers/all';\n@import 'base/all';\n@import 'layout/all';\n@import 'pages/all';\n" > main.scss
echo "All done! Sass-away!"
exit
