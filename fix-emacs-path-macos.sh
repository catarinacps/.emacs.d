alias pbd=/usr/libexec/PlistBuddy
export emacsapp=$(brew --prefix --installed emacs-plus@29)/Emacs.app
export infoplist="${emacsapp}/Contents/Info.plist"

pbd -c "Add :LSEnvironment dict" "${infoplist}"
pbd -c "Add :LSEnvironment:PATH string" "${infoplist}"
pbd -c "Set :LSEnvironment:PATH $(echo "$PATH")" "${infoplist}"
pbd -c "Print :LSEnvironment" "${infoplist}"
touch ${emacsapp}
