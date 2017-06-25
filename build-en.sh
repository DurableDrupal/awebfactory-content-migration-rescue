pandoc manuscript/en/F01.md \
  manuscript/en/I01-Introduction.md \
  manuscript/en/C01-title.md \
  manuscript/en/C02-title.md \
  manuscript/en/B01-bibliography.md \
  -S -o _preview/en/awebfactory-content-migration-rescue.html --toc

pandoc manuscript/en/F01.md \
  manuscript/en/I01-Introduction.md \
  manuscript/en/C01-title.md \
  manuscript/en/C02-title.md \
  manuscript/en/B01-bibliography.md \
  -S -o _preview/en/awebfactory-content-migration-rescue.pdf --toc --latex-engine=xelatex

pandoc manuscript/en/F01.md \
  manuscript/en/I01-Introduction.md \
  manuscript/en/C01-title.md \
  manuscript/en/C02-title.md \
  manuscript/en/B01-bibliography.md \
  -S -o _preview/en/awebfactory-content-migration-rescue.epub
