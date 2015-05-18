REM run from the ../vendor directory
cd vendor
attrib -s -h -r . /s /d
del /S .git*
del /S composer.*
del /S *travis*
del /S LICENSE
del /S *.md
del /S *.MD
del /S php*.x*
del /S Vagrantfile
del /S *.markdown
del /S build.xml
FOR /D /R %%X IN (test*) DO RD /S /Q "%%X"
FOR /D /R %%X IN (Test*) DO RD /S /Q "%%X"
FOR /D /R %%X IN (build) DO RD /S /Q "%%X"
FOR /D /R %%X IN (*1-test*) DO RD /S /Q "%%X"
FOR /D /R %%X IN (.ci) DO RD /S /Q "%%X"
cd ../..
