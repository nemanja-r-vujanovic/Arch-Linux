#!/bin/bash

cat > "$HOME/.config/featherpad/fp.conf" <<'HOME'
[text]
appendEmptyLine=false
autoBracket=false
autoReplace=false
autoSave=false
autoSaveInterval=1
darkBgColorValue=15
darkColorScheme=false
dateFormat=
dictionaryPath=
executeCommand=
executeScripts=false
font="Monospace,30,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0"
inertialScrolling=false
lightBgColorValue=255
lineNumbers=true
maxSHSize=2
noIndent=false
noSyntaxHighlighting=false
noWrap=false
pastePaths=false
recentFiles=
recentFilesNumber=0
recentOpened=false
removeTrailingSpaces=true
saveLastFilesList=false
saveUnmodified=false
selectionHighlighting=false
showEndings=false
showWhiteSpace=false
skipNonText=true
spellCheckFromStart=true
textMargin=false
textTabSize=4
thickCursor=false
vLineDistance=-80

[window]
closeWithLastTab=true
disableMenubarAccel=false
fullscreen=false
hideSearchbar=false
hideSingleTab=false
max=true
menubarTitle=false
nativeDialog=true
noMenubar=false
noToolbar=false
openInWindows=true
position=@Point(2 35)
prefSize=@Size(440 530)
sharedSearchHistory=false
showCursorPos=false
showLangSelector=false
showStatusbar=true
sidePaneMode=false
size=@Size(1915 1005)
splitterPos=150
startSize=@Size(700 500)
sysIcons=false
tabPosition=0
tabWrapAround=false
HOME

sudo tee "/root/.config/featherpad/fp.conf" <<'ROOT'
[text]
appendEmptyLine=false
autoBracket=false
autoReplace=false
autoSave=false
autoSaveInterval=1
darkBgColorValue=15
darkColorScheme=false
dateFormat=
dictionaryPath=
executeCommand=
executeScripts=false
font="Monospace,30,-1,5,400,0,0,0,0,0,0,0,0,0,0,1,,0,0"
inertialScrolling=false
lightBgColorValue=255
lineNumbers=true
maxSHSize=2
noIndent=false
noSyntaxHighlighting=false
noWrap=false
pastePaths=false
recentFiles=
recentFilesNumber=0
recentOpened=false
removeTrailingSpaces=true
saveLastFilesList=false
saveUnmodified=false
selectionHighlighting=false
showEndings=false
showWhiteSpace=false
skipNonText=true
spellCheckFromStart=true
textMargin=false
textTabSize=4
thickCursor=false
vLineDistance=-80

[window]
closeWithLastTab=true
disableMenubarAccel=false
fullscreen=false
hideSearchbar=false
hideSingleTab=false
max=true
menubarTitle=false
nativeDialog=true
noMenubar=false
noToolbar=false
openInWindows=false
position=@Point(2 35)
prefSize=@Size(440 530)
sharedSearchHistory=false
showCursorPos=false
showLangSelector=false
showStatusbar=true
sidePaneMode=false
size=@Size(1915 1005)
splitterPos=150
startSize=@Size(700 500)
sysIcons=false
tabPosition=0
tabWrapAround=false
ROOT

echo