#! /bin/bash
KernelBranch="20201110/neutrino-3"

IncludeFiles "${MainPath}/device/begonia-cfw.sh"
CustomUploader="Y"
UseSpectrum="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/begonia_kernel"
spectrumFile="bego-on-p.rc"
FolderUp="keqing-drive"
TypeBuildTag="[CFW][Stock-LMK]"

CloneKernel
# CloneCompiledGccEleven
CloneCompiledGccTwelve
# CloneGugelClang
CloneOldDTCClang
PullLtoSlmk
CompileClangKernel && CleanOut
# PullSlmk
# CompileGccKernel && CleanOut

# cleanup stuff after done
cd "${MainPath}"
rm -rf *