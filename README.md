## DurableDrupal Content Migration Rescue: AWebFactory.com

Migrate from Drupal Content Monolith to Structured Content Model. To Open API First Architecture.

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

> We use pull requests on GitHub for collaborative editing on this publication.

**How it works**

* Read [GitHub pull request docs](https://help.github.com/articles/about-pull-requests/)
* Read [GitHub help on Pull Requests with a Forked Repo](https://help.github.com/articles/fork-a-repo/)
* Fork this repo
* Create your own topic branch, for example "vero-work"
* Follow [these directions from Github help](https://help.github.com/articles/creating-a-pull-request-from-a-fork/)

