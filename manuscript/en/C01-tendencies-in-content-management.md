## Chapter 1. Tendencies in Content Strategy, Architecture, Management and Delivery.

### Timeline of Change

But the change had started, as it always does in these cases, off the island. And had made their presence felt by coming through in waves. Exactly how, over the past few years, had those waves of change made themselves felt?

#### 2009 - A brave and honest Smallcore Manifesto

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

#### Meanwhile, "off the island" the future of the CMS had already been forged

Fully two years earlier, in 2009, the [NPR API-First "Create Once Publish Everywhere" (COPE)](https://www.slideshare.net/zachbrand/npr-api-create-once-publish-everywhere) digital media system had already become a reality.

#### Lullabot and friends discover and evangelize COPE and Structured Content in 2013

COPE and the Content Model to arrive on the island by snail mail and Lullabot in general, with Jeff Eaton in particular, prove themselves once again (now that Development Seed has abandoned Drupal and discovered [Static Site Generators in 2012](https://developmentseed.org/blog/2012/07/27/build-cms-free-websites/)) quite the pioneer.

* [2013 - Daniel Jacobson and Jeff Eaton on NPR's COPE and Content APIs](https://www.lullabot.com/podcasts/insert-content-here/daniel-jacobson-on-nprs-cope-and-content-apis) 
* [2013 - building for the post-mobile world](https://speakerdeck.com/eaton/building-for-the-post-mobile-world)
* [2014 - Decoupled CMS - "Headless" Drupal Options by Josh Koenig](https://pantheon.io/blog/decoupled-cms-headless-drupal-options)
* [2014 - Innovation - New York Times Executive Report](http://www.presscouncil.org.au/uploads/52321/ufiles/The_New_York_Times_Innovation_Report_-_March_2014.pdf)
    * The New York Times executive headslap report, discovers "structured data" and tags.
* [1980 - Karen McGrane explains in 2013 how TV Guide did it all right decades earlier]
    * [With All Content Moving Mobile, Karen McGrane Writes, The API's The Thing](https://www.forbes.com/sites/anthonykosner/2013/01/09/with-all-content-moving-mobile-karen-mcgrane-writes-the-apis-the-thing/#6afb25b61a8b)
    > "Although at the time the most popular magazine in America, its leadership realized presciently that it was not in the magazine publishing business, but the content publishing business."

#### 2014 Nedjo Rogers courageously denounces how the lack of configuration management in code and #smallcore obeys the special interests of Drupal Big Tech

* [2014 Will The Revolution Be Drupalized? Free Software, Dictatorship, and Saving the World](https://www.drupalwatchdog.com/volume-4/issue-2/will-revolution-be-drupalized)

We are proud to have supported Nedjo and delved deep into both the subject and the ensuing debates:

[2015 Why won't anyone listen to Nedjo? When he says the Drupal 8 Configuration Management system is only listening to one use case?](http://awebfactory.com/node/536)

This article provides an extensive bibliography. In spite of all the blabber about Structured Content, a significant number of the links fail, but we have re-constructed the most significant here:

* [Principles of Configuration Management - Part One by Alex Pott December 9, 2014](https://www.chapterthree.com/blog/principles-of-configuration-management-part-one)
* [Principles of Configuration Management - Part Two by Alex Pott January 9, 2015](https://www.chapterthree.com/blog/principles-of-configuration-management-part-two)
* [Nedjo Rogers: Drupal 8 configuration management: what about small sites and distributions? (response to Alex Pott's articles), January 22, 2015](http://chocolatelilyweb.ca/blog/drupal-8-configuration-management-what-about-small-sites-and-distributions)
* [Nedjo Rogers: Drupal 8 and distributions part 2: problems and prospects, January 26, 2015](http://chocolatelilyweb.ca/blog/drupal-8-configuration-management-what-about-small-sites-and-distributions)
* [Alex Pott (Chapter Three): Drupal 8 and the Enterprise (*response to a rudely un-named Nedjo Rogers*), February 26, 2015](https://www.chapterthree.com/blog/drupal-8-and-enterprise)

#### Let's talk about that Content Model

In attempting to get down to the nitty-gritty of the Content Model, at AWebFactory, we were struck by the modesty, simplicity and profundity of ... in his series of articles on the subject. Like a breath of fresh air, the essence of the Content Model is clearly explained by somone with one foot firmly placed in software development analysis and design and process engineering, and another squarely placed in the architectural vision needed to support Content Management as an articulation of that Content Model (rather than speak about Content Strategy and continue to espouse a "platform" incapable of sustaining it). 

#### "Should we upgrade to Drupal 8?" No.

Drupal 8 was too much, too late. Still monolithic, it launched in November, 2015, almost five years after Drupal 7. Almost two years later, still not widely adopted, already a declining trend, it was desperately trying to sell itself as an "API-First" and "decoupled" back-end solution (admitting that the front end was a total failure) despite it being even less performant, and hence non-scalable, than its predecessor. 

It was also a complete re-write, with xxxx of the code changed. While [Laravel](https://laravel.com/), also based on [Symfony](https://symfony.com/), became the life of the PHP party framework (Laravel is not the hare and the duck at the same time) as it all but embraced Vue.js as its front end, and would be the obvious serious choice in the PHP server-side world.

 

\pagebreak
