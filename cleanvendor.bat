REM run from the vendor/bin directory
attrib -s -h -r . /s /d
del /S .git*
for /d /r . %d in (Tests) do @if exist "%d" rd /s/q "%d"
for /d /r . %d in (tests) do @if exist "%d" rd /s/q "%d"
for /d /r . %d in (test) do @if exist "%d" rd /s/q "%d"
for /d /r . %d in (Test) do @if exist "%d" rd /s/q "%d"
del /S composer.*
del /S *travis*
del /S LICENSE
del /S *.md
del /S *.MD
