#! /bin/bash
KernelBranch="20201110/neutrino-3"

IncludeFiles "${MainPath}/device/begonia-cfw.sh"
CustomUploader="Y"
UseSpectrum="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/begonia_kernel"
FolderUp="begonia-cfw-neutrino"
ExFolder="LZ"

# misc
spectrumFile="bego-on-p.rc"
doSFUp=$FolderUp
 

CloneKernel
CloneCompiledGccTwelve 
TypeBuildTag="[CFW][Stock-LMK]"
CompileGccKernel && pullALmk
CompileGccKernel && pullSlmk
CompileGccKernel && CleanOut


# cleanup stuff after done
cd "${MainPath}"
rm -rf *