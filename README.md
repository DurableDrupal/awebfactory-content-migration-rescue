## DurableDrupal Content Migration Rescue: AWebFactory.com

> Move On with your Content.
>
> From from Drupal Content Monolith to Structured Content Model.
> 
> To Open API First Architecture.

Published using [Pandoc](http://pandoc.org/). See

* [Pandoc User's Guide](http://pandoc.org/MANUAL.html#images).
* [Pandoc Installation Guide](http://pandoc.org/installing.html)
* [Pandoc examples](http://pandoc.org/demos.html)

You will need to install latex for PDF generation. For example, on Ubuntu and derivates:

``` bash
sudo apt-get install latex
sudo apt-get install texlive-xetex
```

To generate output for the **English version** once Pandoc is installed on your system, do the following:

```
mkdir -p _preview/en
./build.sh en
```

For **Spanish version**:

```
mkdir -p _preview/es
./build.sh es
```

And so on, for each successive version.
