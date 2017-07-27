## Chapter 1. Tendencies in Content Strategy, Architecture, Management and Delivery.

### Timeline of Change

But the change had started, as it always does in these cases, off the island. And had made their presence felt by coming through in waves. Exactly how, over the past few years, had those waves of change made themselves felt?

#### 2009 - A brave and honest 
 - Smallcore Manifesto

In [A Smallcore Manifesto: Help Us Build a Better Teddy Bear](https://developmentseed.org/blog/2009/oct/28/smallcore-manifesto-help-us-build-better-teddy-bear/) author [Adrian Rossouw](https://github.com/AdrianRossouw) (then part of the [Development Seed](https://developmentseed.org/), which [abandoned Drupal](https://www.quora.com/Why-did-Development-Seed-abandon-Drupal) a year later) explains the growing (even then) limitations of the Drupal monolith clearly and succinctly.

> This methodology of building sites and applications based on Drupal has served us very well up to now, but we have started reaching the limits of this approach. One of the major selling points for a large majority of developers in the Drupal community has been that Drupal will allow you to build nearly anything...
> 
> The pain points that are starting to become apparent is that as we are building more products that differ from the assumptions that Drupal makes about how it will be used, we are dramatically increasing the amount of work and negatively affecting the usability and stability of any such products that we build. **A large portion of time spent building something like Managing News or Open Atrium is spent undoing the assumptions that Drupal has baked into core directly**.
> 
> To put a finer point on this, the more Drupal becomes a better teddy bear (which is what the D7UX project was attempting), the less useful it becomes for all the other use cases that Drupal is currently being used to solve. Because Drupal core is trying to please both of these audiences at the same time, it means that changes for the end users who just want a better teddy bear are being sacrificed for people who need to be able to build different stuffed animals with it and vice versa.

The "underground" #smallcore movement was proposing a refactoring of Drupal core in order to address these problems.

A few months earlier, the same author had explained ([The Development -> Staging -> Production Workflow Problem in Drupal. Database Is Silver, Code Is Gold.](https://www.developmentseed.org/blog/2009/jul/09/development-staging-production-workflow-problem-drupal/)) the enormous difficulties involved in continuous integration when teams are working with non-trivial sites, due to the pathological inclusion of configuration settings along with content in the database, where it could not form part of a version control system along with the code. 

This was actually the start of the "everything in code" movement, where modules such as [Context](https://www.drupal.org/project/context) and [Features](https://www.drupal.org/project/features) made it possible to shift a good deal of configuration settings to the codebase.

#### 2011 - Jeff Eaton "still trying to please both audiences"

It's the year 2011 in London, England. At 1pm Tuesday, August 23, 2011, [Jeff Eaton](https://www.lullabot.com/about/jeff-eaton) of [Lullabot](https://www.lullabot.com/) opened Pandora's box. With a London DrupalCon session entitled, innocuously enough, [Product, Framework, or Platform? What They Mean, and Why You Should Care](https://london2011.drupal.org/conference/sessions/product-framework-or-platform-what-they-mean-and-why-you-should-care.html) (yes, at this time of writing only this static link survives, plus the [slides](https://london2011.drupal.org/sites/default/files/product-framework-drupal.pdf)), along with the [Video of the session on YouTube](https://www.youtube.com/watch?v=1LR_fGbTtr0), put up two years later due to its importance.

That importance stares at us in black and white on slide 15.

> Drupal at a Crossroads
>
> Choices that help one group can hurt others
>
> Our attempts to avoid this are killing us with complexity.

The two groups were, on the one hand, devs, old timers, agencies, enterprise, and capitalists, and on the other, builders, newbies, site owners, indies and hippies. In short, developers vs users. The former wanted a lithe, developer friendly framework, while the latter wanted a product chock full of completely configured features.

Eaton's "polemical" solution was to "have our cake and eat it too": to transform Drupal into a platform (neither product nor framework; a product and a framework), since "other choices alienate groups our community needs".

Unlike Adrian Rossouw' timely proposal (made a full two years earlier) to shift product-like features out of core, transforming Drupal into a real framework and making it easier to create all kinds of products, Eaton fudges, proposing that Drupal be allowed to bloat, temporarily, leaving time to then separate out the "product parts" from the "toolbox parts", so that no-one gets offended.

Just as a point of reference, fully 8 months before this talk, we were greeted with Drupal 7's presentation layer bloated launch on January 5, 2011. Instead of #smallcore and the solution to some of these painful problems at least, "Enterprise Drupal Gardens" and the community were "gifted" with the Overlay, the Dashboard and the Toolbar (the first three modules anyone building a website had to disable before starting any kind of decent website).

Despite the superficiality and failure to take a stand, at least the taboo was breached and these important questions were put forward. And it won't be the last time we mention Jeff Eaton, or Lullabot, in this chapter.

#### 2009 Meanwhile, "off the island" the future of the CMS had already been forged

* Fully two years earlier, in **2009**, the [NPR API-First "Create Once Publish Everywhere" (COPE)](https://www.slideshare.net/zachbrand/npr-api-create-once-publish-everywhere) digital media system had already become a reality.
* **2009**. NPR’s [Create Once, Publish Everywhere](http://blog.programmableweb.com/2009/10/13/cope-create-once-publish-everywhere/)
* 
#### 2013 Lullabot and friends discover and evangelize COPE and Structured Content

COPE and the Content Model to arrive on the island by snail mail and Lullabot in general, with Jeff Eaton in particular, prove themselves once again (now that Development Seed has abandoned Drupal and discovered [Static Site Generators in 2012](https://developmentseed.org/blog/2012/07/27/build-cms-free-websites/)) quite the pioneer.

* [2013 - Daniel Jacobson and Jeff Eaton on NPR's COPE and Content APIs](https://www.lullabot.com/podcasts/insert-content-here/daniel-jacobson-on-nprs-cope-and-content-apis) 
* [2013 - building for the post-mobile world](https://speakerdeck.com/eaton/building-for-the-post-mobile-world)
* [2014 - Decoupled CMS - "Headless" Drupal Options by Josh Koenig](https://pantheon.io/blog/decoupled-cms-headless-drupal-options)
* [2014 - Innovation - New York Times Executive Report](http://www.presscouncil.org.au/uploads/52321/ufiles/The_New_York_Times_Innovation_Report_-_March_2014.pdf)
    * The New York Times executive headslap report, discovers "structured data" and tags.
* [2014 Karen McGrane: Content in a Zombie Apocalypse](https://karenmcgrane.com/category/content-strategy/)
    > "it’s not about smartphones, it’s about separating content from form"
* [1980 - Karen McGrane explains in 2013 how TV Guide did it all right decades earlier]
    * [With All Content Moving Mobile, Karen McGrane Writes, The API's The Thing](https://www.forbes.com/sites/anthonykosner/2013/01/09/with-all-content-moving-mobile-karen-mcgrane-writes-the-apis-the-thing/#6afb25b61a8b)
    > "Although at the time the most popular magazine in America, its leadership realized presciently that it was not in the magazine publishing business, but the content publishing business."

#### 2014 Nedjo Rogers courageously denounces how the lack of configuration management in code and #smallcore obeys the special interests of Drupal Big Tech

* [2014 Will The Revolution Be Drupalized? Free Software, Dictatorship, and Saving the World](https://www.drupalwatchdog.com/volume-4/issue-2/will-revolution-be-drupalized)

> We are proud to have supported Nedjo and delved deep into both the subject and the ensuing debates:
> 
> [2015 Why won't anyone listen to Nedjo? When he says the Drupal 8 Configuration Management system is only listening to one use case?](http://awebfactory.com/node/536)
>  
> This article provides an extensive bibliography. In spite of all the blabber about Structured Content, a significant number of the links fail, but we have re-constructed the most significant here:
> 
> * [Principles of Configuration Management - Part One by Alex Pott December 9, 2014](https://www.chapterthree.com/blog/principles-of-configuration-management-part-one)
> * [Principles of Configuration Management - Part Two by Alex Pott January 9, 2015](https://www.chapterthree.com/blog/principles-of-configuration-management-part-two)
> * [Nedjo Rogers: Drupal 8 configuration management: what about small sites and distributions? (response to Alex Pott's articles), January 22, 2015](http://chocolatelilyweb.ca/blog/drupal-8-configuration-management-what-about-small-sites-and-distributions)
> * [Nedjo Rogers: Drupal 8 and distributions part 2: problems and prospects, January 26, 2015](http://chocolatelilyweb.ca/blog/drupal-8-configuration-management-what-about-small-sites-and-distributions)
> * [Alex Pott (Chapter Three): Drupal 8 and the Enterprise (*response to a rudely un-named Nedjo Rogers*), February 26, 2015](https://www.chapterthree.com/blog/drupal-8-and-enterprise)

#### 2014 Mo' Structured Content 

* [The Battle for the Body Field (Trouble in Chunkytown)](https://alistapart.com/article/battle-for-the-body-field)
    * The fight against the tangled blobs of "valuable content with boilerplate markup, gnarly design tweaks, and other difficult-to-maintain cruft"

#### 2015 Lullabot dumps Drupal on its website and moves on to Full Stack

Calling it "headless Drupal" this historical watershed kept Drupal around as CMS but extirpated it completely from the Content Delivery system (something not readily apparent from the official announcement)

Ahead of its time, the architecture continues to be at least an evolutionary option for those migrating to a Full Stack solution.

* [2015 Announcing The New Lullabot.com](https://www.lullabot.com/news/announcing-the-new-lullabotcom)
    > "The technical team settled on a decoupled, isomorphic approach using Facebook's [React](https://facebook.github.io/react/), [Node.js](https://nodejs.org), [CouchDB](http://couchdb.apache.org/) (a noSQL database) **and Drupal as the backend CMS**...."
    > 
    > "Content management is what Drupal does best, and this happens through a purpose-built subsite where the Lullabot team can login and post articles, podcasts, and manage their bios. Drupal pushes content into CouchDB, which exposes a REST API for React to consume. React is an isomorphic library (its code can run both in the server and the client), which means that when a visitor first visits the site, they receive the html of the entire page. Then, the rest of the navigation happens client-side, updating just the parts of the page which are different from the current one. Furthermore, React is written to be completely backward compatible with older browsers."
* [2015 The New Lullabot.com - podcast](https://www.lullabot.com/podcasts/drupalizeme-podcast/the-all-new-lullabotcom)
    * "React.js, CouchDB, Node.js, de-coupling Drupal..."
    * [What is an isomorphic application?](https://www.lullabot.com/articles/what-is-an-isomorphic-application)

The enthusiasm voiced in the podcast, plus our own enthusiasm at discovering that Lullabot had just implemented what we were looking forward to doing, led to our own tweet, which headed up our old Drupal 6 website for some time, owning up to what we were up to ourselves:

> Working in winter quarters to migrate [AWebFactory.com](http://awebfactory.com) to new architecture. We haven't seen this spirit here since 1996. Stay tuned.
> 
> -- AWebFactory (@a_web_factory) [August 5, 2015](https://twitter.com/a_web_factory/status/628923669784461313)

#### 2017 The Quest for the Holy Grail: which API-First CMS to use?

Since content needs to be structured, and not stored as a formless blob created by a rich text editor (aka WYSIWYG editor), it is significant that Lullabot's 2015 website makeover used the legacy Drupal 7 as a backend CMS "which is what Drupal does best". 

> **Some thoughts on rich text editors**
> 
> * [2013 Karen McGrane: WYSIWTF](https://alistapart.com/column/wysiwtf)
> 
> * [2013 - Wim Leers - Drupal 8: best authoring experience for structured content?](http://wimleers.com/article/drupal-8-structured-content-authoring-experience)
>    * This article includes an excellent review of Content Strategy and Structured Content, rich in links.

But by DrupalCon Baltimore 2017 (April) (which sported a huge number of sessions concerned with decoupled, "headless" Drupal), a team of desperate questers from Lullabot and Acquia joined forces to present  a thorough survey of current alternatives, and presented [Decoupled from the Inside Out](https://www.youtube.com/watch?v=KF9gG_bkUDo)

The CMSes surveyed offer some or all of the following features:

* Editorial workflow with architecture based on Node.js and React.js (or another front end framework)
* SDKs for creating
    * Client Web Applications using Angular, React, Ember and other frameworks, such as PHP (Symfony and Laravel).
    * Native Apps
    * Static Site Generators like Jekyll
    > *Note: AWebfactory has been investigating [several Static Site Generators](https://www.staticgen.com/) as alternatives to Jekyll*.
* Structured Content exposed as a REST API
* Multiple Sites can be targeted with content
* Real-time preview and/or inline live editing

CMSes surveyed:

* Open Source CMS
    * [WordPress Calypso](https://github.com/Automattic/wp-calypso)
    * [KeystoneJS](https://github.com/keystonejs/keystone)
        * Drupal-like field API
        * Persists content in MongoDB database
        * React based UI
        > *Note: AWebFActory has detected however that this project is no longer active at this time, nor has there been any significant fork.*

    * [Django CMS](https://www.django-cms.org/en/)
* Proprietary CMS (paid platforms)
    * [Contentful](https://www.contentful.com/)
    * [Prismic](https://prismic.io/)
    * [Built.io Contentstack](https://www.built.io/products/contentstack/overview)
    * [Cloud CMS](https://www.cloudcms.com/)
    * [Kentico Cloud](https://kenticocloud.com/)
* Drupal 8
    * Off the shelf, significant deficiencies.
    * With extensions, there could be good possibilities
* Drupal 7
    * Lullabot showed off its own back end sporting hot loading preview for content items being edited (but sadly unpublished) CMS based on Drupal 7.
* Decoupled Drupal issues
* Drupal internally decoupled
    * separated out into components
    * `#smallcore` revisited
    * Tantalizing, parts of "Drupal" would not need to be implemented in PHP!
    > *AWebFactory is actively pursuing these kinds of "withering away of Drupal" architectures*.

#### 2017 The Future of Drupal Depends on how well it can be Marketed as a back end CMS and SCS API

* The idea of Drupal 8 as back-end (CMS (Content Management System) and SCS (Structured Content Server)) has surfaced and re-surfaced in the short time since DrupalCon Baltimore 2017, with no less than three offerings:
    * Contenta (much tweeting at DrupalCon on June 30)
        * [Contenta Repo](https://github.com/contentacms)
        * [Project description](https://github.com/contentacms/contenta_jsonapi_project)
    * [Acquia Reservoir Content Repository](https://dev.acquia.com/blog/introducing-reservoir-a-distribution-for-decoupling-drupal/19/06/2017/18296) 
        * [Repo](https://github.com/acquia/reservoir)
    * [Thunder: Drupal 8 based CMS for publishers](http://www.thunder.org/)
* DrupalCon Baltimore 2017 offered more than a dozen sessions on decoupled and headless Drupal, showing that it's pretty clear to everyone that this is the only viable route open to future Drupal surivival at this point. Drupal is being vigorously marketed at this point as a CMS and SCS API back end.
    * [Lessons Learned from Drupalcon 2017 Baltimore: Decoupled Headless Drupal](https://labs.mlssoccer.com/lessons-learned-from-drupalcon-2017-baltimore-decoupled-headless-drupal-852d76d1cfb9)
        * **Excellent roundup article with background info, it itemizes more than half a dozen "headless" alternatives**
    * [Drupal API-First Initiative](https://www.drupal.org/node/2757967)
    * [Headless Drupal — Build a Drupal 8 API with a ReactJS Front-End](https://medium.com/@Userium/headless-drupal-build-a-drupal-8-api-with-a-reactjs-front-end-e43bf0fb94db)
    * [How to Create a Headless Drupal Site](https://www.adcisolutions.com/knowledge/how-create-headless-drupal-site)
    * [Ain’t No Body: Not Your Mama’s Headless Drupal](https://events.drupal.org/baltimore2017/sessions/ain%E2%80%99t-no-body-not-your-mama%E2%80%99s-headless-drupal)
        * [Description](https://pdayquotient.github.io/drupalcon-2017-bodiless-drupal/)
        * [Repo](https://github.com/pdayquotient/drupalcon-2017-bodiless-drupal)
    * [Building a Fully Decoupled Drupal 8 Data Backend](https://events.drupal.org/baltimore2017/sessions/building-fully-decoupled-drupal-8-data-backend)
* [Acquia Waterwheel.js A generic JavaScript helper library to query and manipulate Drupal 8 via core REST](https://github.com/acquia/waterwheel.js)

> AWebFactory got a working example of its own going, based on material presented in one of the sessions.
> 
> [DurableDrupal Repo: How to create a headless Drupal site](https://github.com/DurableDrupal/durable-drupal-cms-cliente-01)

#### 2017 Additional actively developed Free Software and Open Source CMS being investigated by AWebFactory

We have investigated additional CMS having similar characteristics:

* Ponzu Written in [Go](https://golang.org/) is a pure headless (API first) CMS. Suggested to us by amigo Joaquín Bravo Contreras of [Axai](http://www.axai.com.mx/). Like Keystone and Drupal, it works on an architecture of fields and content types (sound familiar?), which definitely looks like the way to go. In fact, with go, you define the fields for content type on the command line including the editor that you want for the field. For example: `content string: textarea:rte, another field...`
This is the first step. There is no second step.
    * See [Ponzu CMS](https://github.com/ponzu-cms/ponzu)
    * [Video introduction](https://www.youtube.com/watch?v=T_1ncPoLgrg)
    * While constituting a fascinating alternative, it would involve bringing yet another programming language into the mix. Plus it is extremely new, and a community has yet to form around it.
* Directus is a fascinating although somewhat dated offering, which, like Django CMS, is free software and open source even though it is also offered as a paid platform. Also field based.
    * [Directus Headless CMS with REST API written in PHP and Backbone.js](https://getdirectus.com/)
    * [Repo](https://github.com/directus/directus)
* David Hernandez and The Gizra Way (Headless Drupal 7)
    * [Headless Drupal the Gizra Way](http://slides.com/david_hernandez/headless-drupal#/)
    * [Repo](https://github.com/DavidHernandez/drupal-elm-starter)

#### 2017 But we want a CMS that writes to a decoupled SCS (Structured Content Server)

All of these choices oblige you to use the CMS also as the SCS (Structured Content Server). What we at AWebFactory is to decouple these two processes. Most of this book is dedicated to showing how this can be done, and we offer a detailed guide accompanying actual free software and open source code repositories you can download and actually use. We are the only ones doing this.

#### 2017 Let's talk about that Content Model. Cleve Gibbon's Series of Articles FTW.

In attempting to get down to the nitty-gritty of the Content Model, at AWebFactory, we were struck by the modesty, simplicity and scientific, buzzwordless, non-rockstar profundity of Cleve Gibbon in his [Content Model series of articles](http://www.clevegibbon.com/content-modeling/). 

The series should be studied by everyone. Like a breath of fresh air, the essence of the Content Model is clearly explained by somone with one foot firmly placed in software development analysis and design and process engineering, and another squarely placed in the architectural vision needed to support Content Management as an articulation of that Content Model (rather than speak about Content Strategy and continue to espouse a "platform" incapable of sustaining it). 

The series was [completed in October, 2016](http://www.clevegibbon.com/2016/10/content-modelling-series-done/) and is extremely up-to-date. Cleve Gibbon, the Martin Fowler of Content Strategy.

#### "Should we upgrade to Drupal 8?" No.

Drupal 8 was too much, too late. Still monolithic, it launched in November, 2015, almost five years after Drupal 7. Almost two years later, still not widely adopted, already a declining trend, it was desperately trying to sell itself as an "API-First" and "decoupled" back-end solution (admitting that the front end was a total failure) despite it being even less performant, and hence non-scalable, than its predecessor. 

It was also a complete re-write, with xxxx of the code changed. While [Laravel](https://laravel.com/), also based on [Symfony](https://symfony.com/), became the life of the PHP party framework (Laravel is not the hare and the duck at the same time) as it all but embraced Vue.js as its front end, and would be the obvious serious choice in the PHP server-side world.

\pagebreak
