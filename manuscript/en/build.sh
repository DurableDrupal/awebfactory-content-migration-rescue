toc=$(<manuscript/en/toc.txt)

# html
pandoc ${toc} -s -o _preview/en/awebfactory-content-migration-rescue.html --toc --toc-depth=4

# md to md
pandoc ${toc} -s -o _preview/en/awebfactory-content-migration-rescue.md --toc --toc-depth=4

# pdf
pandoc ${toc} -o _preview/en/awebfactory-content-migration-rescue.pdf --toc --toc-depth=4 --pdf-engine=xelatex

# epub 
pandoc ${toc} -o _preview/en/awebfactory-content-migration-rescue.epub --toc --toc-depth=4
