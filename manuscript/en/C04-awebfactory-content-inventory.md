## Chapter 4. AWebFactory.com. Content Inventory. {#Chapter4}

We're actually going to do a great content inventory and audit, but also, as part of that process, prepare ourselves for [Chapter 6. AWebFactory.com. Initial Migration Iteration.](#Chapter6) by readying and running Drush migration scripts to standard out. These will be run in Chapter 6 and will upsert all content to the [SCS](#SCS "Structured Content Server"), which will be created at that time also.

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

One additiional additional reason for doing content Inventories mentioned in the article is that they may be used to create [Content Audits](#ContentAudit):
>
> From a content inventory, you can build content audits, documents that allow you to review page-by-page how content is performing against predefined measures of quality and effectiveness. [CAT, the Content Analysis Tool](http://www.content-insight.com/products/), builds a website content inventory that acts as a foundation for an informed content audit by returning the information you most need to know about your site: how much of it is there, what types of content you have (pages, audio, video, documents), as well as URL structure, which can provide valuable clues as to content types (for example, product pages on an e-commerce site will have similar URL patterns), and how the site is structured (from URL structure perspective).

Also of extreme importance is the need for a complete list of legacy URLs (especially those having external links) in order to ensure that the migration will be as SEO friendly as possible:

> That’s when a good site crawl tool is a godsend. I recommend [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/). This tool will crawl your site and give you a list of every single URL it finds, as well as a huge range of other information about those URLs, like title tags, canonical tags, meta-robots tags and much more.
>
> At this point, it’s helpful to also run a check of all of your externally linked pages on [Moz’s Open Site Explorer](https://moz.com/researchtools/ose/) or [Google Search Console](https://www.google.com/webmasters/#?modal_active=none) to make sure you include each page that is receiving link authority in your content move. Essentially, what you are looking for is any page with one or more external links pointing to it.
>
> If you are building new URLs, you want to make sure that each of these pages gets redirected to its corresponding new URL to ensure link authority is retained.
>
> <small>Stephen Spencer, [*Relaunching Your Site? Don’t Even Think About It Without A Solid SEO Game Plan!*](http://searchengineland.com/relaunching-site-dont-even-think-without-solid-seo-game-plan-231315)</small>

And finally, we need to consider that a Content Inventory and Audit is definitely a first necessary step towards starting to work on the [Content Model](#ContentModel) (see next chapter: [Chapter 5. AWebFactory.com. Content Modeling](#Chapter5)).

### How do people do [Content Inventories](#ContentInventory)?

* Manually. Something that is becoming increasingly impossible with the growth of content within a site, and which would also be error prone.
* Using automation tools for content inventories and audits
    * Open Source Tools
        * None we know of. [Tell us](https://github.com/DurableDrupal/awebfactory-content-migration-rescue/issues/new)!
    * Proprietary Tools (including free and paid options and versions)
        * [CAT](http://www.content-insight.com/products/)
        * [Tools from GatherContent from this Blog Post: How to Perform a Content Audit](https://gathercontent.com/blog/how-to-perform-a-content-audit)
            * [How to Automate your Content Audits](https://gathercontent.com/blog/how-to-automate-your-content-audits)
        * [Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/)
        * [33 Amazing Content Audit Tools for Easy Content Analysis](https://dynomapper.com/blog/12-content-audits/283-top-content-audit-tools)
        * [5 Tools to Help You Audit Your Web Content](https://www.entrepreneur.com/article/244045)
    * Tools for auditing external links
        * [Moz’s Open Site Explorer](https://moz.com/researchtools/ose/) 
        * [Google Search Console](https://www.google.com/webmasters/#?modal_active=none)
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

So to the extent that the legacy site is Drupal based, it makes sense, at least for the purposes of Content Inventory and Content Modeling, to leverage the list of available Drupal based content inventory and audit tools.

Of course you are absolutely free to use any of the methods listed above, or you may want to write your own inventory, audit or migration scripts. We're just sharing here how we did it. Please raise issues in the [issue queue](https://github.com/DurableDrupal/awebfactory-content-migration-rescue/issues) if you would like to discuss a [pull request](https://github.com/DurableDrupal/awebfactory-content-migration-rescue/pulls).

#### Lit: Content Inventory Step 1: Clone the Drush scripts repo

First, let's go with **Lit**, our Drupal 7 case study [Lit online literary workshop community](http://lit-dev.awebfactory.net/)

```
****** bookmark TODO *****
I recommend 
[Screaming Frog SEO Spider](https://www.screamingfrog.co.uk/seo-spider/). 
[Moz’s Open Site Explorer](https://moz.com/researchtools/ose/) 
[Google Search Console](https://www.google.com/webmasters/#?modal_active=none)


clean everything so no bm references

make the repo

clone and apply to lit
````

#### Lit: Content Inventory Step 2: Run the Content listing dd_script1 to see what we've got

#### Lit: Content Inventory Step 3: Run the Drupal Content Types Discovery dd_script2

#### Lit: Content Inventory Step 4: Apply the Drupal Content Types Discovery Script recommendations to adapt the Content Types Migration dd_script3

#### Lit: Rinse and repeat with the Users and User Roles scripts

#### Lit: Rinse and repeat with the Taxonomy Scripts

Secondly, let's go with **AWebFactory**, our Drupal 6 case study [AWebFactory](http://lit-dev.awebfactory.net/)

#### AWebFactory: Content Inventory Step 1: Clone the Drush scripts repo

Of course you can write your own. But we're sharing here how we did it. Please raise issues in the issue queue.

#### AWebFactory: Content Inventory Step 2: Run the Content listing dd_script1 to see what we've got

#### AWebFactory: Content Inventory Step 3: Run the Drupal Content Types Discovery dd_script2

#### AWebFactory: Content Inventory Step 4: Apply the Drupal Content Types Discovery Script recommendations to adapt the Content Types Migration dd_script3

#### AWebFactory: Rinse and repeat with the Users and User Roles scripts

#### AWebFactory: Rinse and repeat with the Taxonomy Scripts

### On WordPress? You can use the same techniques for a WordPress Content Migration Rescue

Pull request anyone? Or help us on ours.

\pagebreak
