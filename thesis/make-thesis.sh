#---------------------------------------------------------------------------------------- 
#Thesis compile script																	|
#																						|
# This script will compile the main thesis and bibtex files, move temporary 			|
# files to the temp/ directory, and create thesis.pdf in the base directory.			|
#																						|
# NEVER run as root or in any other directory that isn't the base thesis directory.		|
#																						|
# A smart person would add a line for document saving with their text editor of choice,	|
# avoiding the need to save the document first and then running this script.			|
#----------------------------------------------------------------------------------------

#!/bin/bash
pdflatex thesis.tex
bibtex thesis.aux
pdflatex thesis.tex
pdflatex thesis.tex
mv *.aux *.blg *.out *.toc *.lo* *.mtc* *.bbl *.maf temp/
mv content/main/*.aux temp/
mv content/front/*.aux temp/
mv content/back/*.aux temp/
mv base/*.xmpi temp/
cp thesis.pdf Sean_Anderson-Opt_NL_Spec_Au_Si_NPs-thesis.pdf
