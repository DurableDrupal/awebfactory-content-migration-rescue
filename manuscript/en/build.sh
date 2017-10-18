toc=$(<manuscript/en/toc.txt)

# html
pandoc ${toc} -S -s -o _preview/en/awebfactory-content-migration-rescue.html --toc --toc-depth=4

# md to md
pandoc ${toc} -S -s -o _preview/en/awebfactory-content-migration-rescue.md --toc --toc-depth=4

# pdf
pandoc ${toc} -S -o _preview/en/awebfactory-content-migration-rescue.pdf --toc --toc-depth=4 --latex-engine=xelatex

# epub 
pandoc ${toc} -S -o _preview/en/awebfactory-content-migration-rescue.epub --toc --toc-depth=4
