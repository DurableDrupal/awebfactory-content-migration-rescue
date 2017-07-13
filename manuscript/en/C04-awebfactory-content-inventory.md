## Chapter 4. AWebFactory.com. Content Inventory. {#Chapter4}

We're actually going to do a great content inventory and audit, but also, as part of that process, prepare ourselves for [Chapter 6. AWebFactory.com. Initial Migration Iteration.](#Chapter 6) by readying and running Drush migration scripts to standard out. These will be run in Chapter 6 and will upsert all content to the [SCS](#SCS "Structured Content Server"), which will be created at that time also.

Right now, and in [Chapter 5. AWebFactory.com. Content Modeling](#Chapter5), we are going to concentrate on our content!

### Why do a [Content Inventory](#ContentInventory)?

A Content Inventory is an internal list of content items, filterable by business goals and audience interests and goals. The objective is to prioritize content items by their value in order to decide what to keep and what to discard. We need to carry out such an inventory in order to assess and guarantee content value.

The article [Website Content Inventories. Easier, Faster & More Accurate Results Using Software Tools](http://www.content-insight.com/resources/content-inventory-and-audit-articles/website-content-inventories/), which should be studied, explains the questions answered by Content Inventories:

> How many pages does the website have?
>
> How many and what other types of content assets are there (images, videos, documents) and what pages are they associated with?
>
> Where are pages located, identified by URL?
>
> What do the URL structures indicate about content types?
>
> How many pages link to or out of each page?

One additional reason for doing content Inventories mentioned in the article is that they may be used to create [Content Audits](#ContentAudit):

> From a content inventory, you can build content audits, documents that allow you to review page-by-page how content is performing against predefined measures of quality and effectiveness. [CAT, the Content Analysis Tool](http://www.content-insight.com/products/), builds a website content inventory that acts as a foundation for an informed content audit by returning the information you most need to know about your site: how much of it is there, what types of content you have (pages, audio, video, documents), as well as URL structure, which can provide valuable clues as to content types (for example, product pages on an e-commerce site will have similar URL patterns), and how the site is structured (from URL structure perspective).

So, the Content Inventory and Content Audit seems to be the first step towards even starting to work on the [Content Model](#ContentModel) (see next chapter: [Chapter 5. AWebFactory.com. Content Modeling](#Chapter5)).

### How do people do [Content Inventories](#ContentInventory)?

* Manually. Something that is becoming increasingly impossible with the growth of content within a site, and which would also be error prone.
* Using automation tools for content inventories and audits
    * Open Source Tools
        * None we know of. [Tell us](https://github.com/DurableDrupal/awebfactory-content-migration-rescue/issues/new)!
    * Proprietary Tools (including free and paid options and versions)
        * [CAT](http://www.content-insight.com/products/)
        * [Tools from GatherContent from this Blog Post: How to Perform a Content Audit](https://gathercontent.com/blog/how-to-perform-a-content-audit)
            * [How to Automate your Content Audits](https://gathercontent.com/blog/how-to-automate-your-content-audits)
        * [33 Amazing Content Audit Tools for Easy Content Analysis](https://dynomapper.com/blog/12-content-audits/283-top-content-audit-tools)
        * [5 Tools to Help You Audit Your Web Content](https://www.entrepreneur.com/article/244045)
    * Drupal content inventory and auditing tools
        * [Content Audit module](https://www.drupal.org/project/content_audit)
            * Creates view "content_audit" depends on Vews Data Export module
            * [Repo](https://www.drupal.org/project/2476703/git-instructions)
            * [Views Data Export module](https://www.drupal.org/project/views_data_export)
                * Use to export data from the output of **views** `drush views-data-export [view-name] [display-id] [output-file]`
                * [docs](https://www.drupal.org/node/1820452)
        * [Article on using Views Data Export module for custom content audit views](https://www.bluecoda.com/blog/using-views-export-content-nodes-drupal)
        * [2011 article but very useful on content audit: Content inventory and content audit with Views](http://drupalsun.com/lisa/2011/04/10/content-inventory-and-content-audit-views)
        * [Content Inventory and Audit Tools Distro](https://www.drupal.org/sandbox/jakcette/2476703)

### We're rolling our own with Drush

So to the extent that the legacy site is Drupal based, it makes sense to leverage the list of available Drupal based content inventory and audit tools.

Before diving into the details (with examples for Drupal 6 and Drupal 7), let's get an overview of what's involved and the kind of results we can get from these tools.

Assuming we have cloned the live production site to a server of our own (TODO see appendices A and B for Drupal 6 and for Drupal 7 sites respectively), we could place our Drush scripts in the `./scripts` folder, outputting to `./scripts/data`

> TODO You can clone a repo with the drush scripts mentioned below from http://.........

* First we get list of enabled modules
    * `drush pm-list | grep Enabled > data/inv_modules.txt`
* Secondly, let's grab a list of views
    * `drush views-list > data/inv_views-list.txt`
* Now let's try to obtain a content audit (with above modules installed)
    * `drush views-data-export content_audit page data/inv_content_audit.txt`
    * `drush views-data-export content_audit views_data_export_2 data/inv_content_audit.xls`
    * `drush views-data-export content_audit views_data_export_1 data/inv_content_audit.csv`

The TXT version is useless for processing, but the CSV can be read by a drush file and iterated over.

TODO add in some actual data here for victorkane.me imaginary site (drupal 7) and/or AWebFactory.com (Drupal 6)

It's certainly sufficient for our purposes of accumulating raw material as input for our content modeling, and for preparing us to write legacy export scripts using Drush.

So now let's see this how this process works for AWebFactory.com (Drupal 6 and the drupal6 branch of the Drush export scripts repo) and a fictitious site victorkane.me (Drupal 7, the master and drupal7 branch of the drush scripots repo).

#### List of Drush Content Inventory and Migration scripts.

#### Content Inventory Step 1: Clone the Drush scripts repo

Of course you can write your own. But we're sharing here how we did it. Please raise issues in the issue queue.

#### Content Inventory Step 2: Run the Content listing dd_script1 to see what we've got

#### Content Inventory Step 3: Run the Drupal Content Types Discovery dd_script2

#### Content Inventory Step 4: Apply the Drupal Content Types Discovery Script recommendations to adapt the Content Types Migration dd_script3

#### Rinse and repeat with the Users and User Roles scripts

#### Rinse and repeat with the Taxonomy Scripts

### On WordPress? You can use the same techniques for a WordPress Content Migration Rescue

Pull request anyone? Or help us on ours.

\pagebreak
