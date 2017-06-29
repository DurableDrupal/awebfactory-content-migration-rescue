## Capítulo 2. La Migración en Etapas

Nosotros nos hemos aterrizado in this brave new world of decoupled, Api-First architectures enabling the distributed Management and Delivery of Structured Content Models. Where content constantly travels between software stack instances of servers and clients: there's a central structured content server (SCS), there's an editorial app to manage the content stored on that server (CMS) and there are one or more client web apps (CWA) publishing that content and meeting users' needs in multiple ways.

In order to do this the content in our legacy Drupal app must be audited, inventoried, analyzed and curated, in order to determine the new and improved migration target content model The content must then be transformed and rescued by extracting it and storing it according to that Content Model on the Structured Content Server, where it is exposed via an HTTP API (either REST or something like the newer GrahpQL) to be consumed by Client Web Applications and Native Apps. The Editorial Workflow must be designed, and an API First CMS implemented. Alternative architectural stacks that could be used to implement all of this must be evaluated and candidate architectures prioritized, planned and budgeted, implemented and deployed.

### The Migration Process

Migration of our content to such a new system, then, requires the completion of the following steps:

* A thorough content audit, and analysis of our content inventory, with the aim of analyzing and organizing that content in a more structured manner. We'll get a clearer picture of all our content types, the content attributes forming them, and the relationships between them. In short, a clearer definition of our content model.
* The implementation of a central server capable of exposing our now fully structured content to multiple client web applications and native apps via a standard HTTP API.
* Migration scripts to extract and "rescue" our content by placing it on the Structured Content Server via its HTTP API.
* A modern API-First CMS whose sole responsibility is to enable the creation and editing of content ready to be published, in the context of a user role based workflow appropriate to staff needs and adopted by the organization.
* The implementation of at least one client web application that consume the API made available by the structured content server.

Now, the distributed architecture required to support this could be implemented all at once by directly replacing Drupal with a software stack such as the following:

* CMS (Content Management System): A modern, customized API First, decoupled, "headless" CMS based on a React.js or Vue.js administration panel.
* A SCS (Structured Content Server) using Node.js, Express.js, MongoDB and schemas using an ODM (object document modeler) such as Mongoose, in order to structure the persistence and API of our Content Model.
* A CWA (Client Web Application) built as a universal SPA (single page application) based also on React.js or Vue.js.
* Additional CWA and native apps consuming the same central SCS.

Migration scripts would then also have to be iteratively and incrementally developed, tested and executed.

This is precisely what we have decided upon for AWebFactory.com, the case study we are sharing here on a day to day basis as a complete and reusable example.

However, it's worth asking the following question: 

Do we have to jump over to a completely new technology stack all at once, lock, stock and barrel? Might a more evolutionary path not be available as an alternative? And might the stages found along such a gradual path not include alternatives very likely be optimum for a wide range of projects and circumstances we are going to be encountering with our clients?

In order to explore this important question before going on to the AWebFactory.com case study in the next chapter, let's examine what the stages along such a more gradual path might look like. 

> Note: These four evolutionary stages may also be ideal for professionals, agencies and organizations seeking to avoid too much change all at once. Each stage could be applied, one by one,
across all projects, step by step, as a perfect learning curve!

### A Four-Stage Gradual Approach to the Migration Process

The four stages are:

* Stage 1. Drupal 8 as an All in One Vehicle for a Refactored Structured Content Model.
* Stage 2. Drupal 8 as an API First CMS and Structured Content Server, with decoupled front end JavaScript framework based websites and web applications.
* Stage 3. Drupal 8 as the API-First CMS only, with completely decoupled Structured Content Server and Front End Client Web Application instances
* Stage 4. Replace Drupal 8 as CMS with another more scalable and modifiable API-First CMS that was genuinely designed for that job.

#### Stage 1. Drupal 8 as an All in One Vehicle for a Refactored Structured Content Model.

First, apply a Content Strategy to refine the legacy Content Model (or lack of one) and refactor the Content Types and their attributes into a more evolved target model reflecting a new, higher level of understanding of business needs.

Then, utilize Drupal 8 as the Structured Content Server, the CMS, and as the Content Delivery application all in one.

This is definitely a progressive step away from having to accept Drupal as an old-fashioned, isolated monolithic solution. 

It can be achieved by adopting a process such as the following:

* Specify the target Content Model, perhaps using a UML diagram editor, such as [Astah Community](http://astah.net/editions/community), or else a mind mapping tool (or take photos of a whiteboard).
* Completely refactor the Content Model using D8 bundles, identifying content types and their attributes expressed as fields.
* Import the legacy content model
    * Using the [Migrate module](https://www.drupal.org/project/migrate)
    * Using the [Migrate Plus module](https://www.drupal.org/project/migrate_plus) in order to export and import as JSON/XML.
        * Migrate Plus examples
    * Other Drupal 8 migrate resources
        * [Jeff Geerling: Migrate a custom JSON feed in Drupal 8 with Migrate Source JSON](http://www.jeffgeerling.com/blog/2016/migrate-custom-json-feed-drupal-8-migrate-source-json)
        * [Mike Ryan: Drupal 8 plugins for XML and JSON migrations](http://virtuoso-performance.com/blog/mikeryan/drupal-8-plugins-for-xml-and-json-migrations)
        * [Drupal 8 JSON custom migration, on the basis of all of the above, took the 'Product' example from Jeff Geerling that explained the migrate_source_json which is now part of the migrate_plus module to make their own example](https://colorfield.be/blog/drupal-8-json-custom-migration)
* Use one of the Drupal 8 responsive themes, such as [Bootstrap](http://getbootstrap.com) or [Zurb Foundation](http://foundation.zurb.com/) in order for the web application to adapt to any device.

A prototype or production instance can now be deployed at this stage, lacking to be sure a decoupled Full Stack JavaScript Architecture, but with important gains made in terms of the refactored target Content Model.

#### Stage 2. Drupal 8 as an API First CMS and Structured Content Server, with decoupled front end JavaScript framework based websites and web applications.

> If you are following the all-at-once Stage 4 route, (as we are, see the AWebFactory.com case study, starting in the next chapter), the legacy Drupal (6 or 7) website can **also** be considered as a possible (temporary or permanent) API-First CMS replacement, with the inclusion of drop-in modules we are now developing at AWebFactory.com, or other already developed elsewhere, such as [The Gizra Way](https://github.com/DavidHernandez/drupal-elm-starter), which uses Drupal 7 as the API-First CMS and Elm as an interesting alternative to JavaScript, for the front-end application.

In this second, more ambitious and highly rewarding stage:

* Drupal 8 functions as a tightly coupled API First CMS and Structured Content Server
    * Based on a REST API enabling module
        * NOT one of the pseudo REST APIs based on idiosyncratic Drupal entities, but rather a content model based standard API following best practices, such as `/api/posts`, `/api/posts/:id` for GET, PUT (update, upsert), POST (create), DELETE. 
    * Based on [Contenta CMS](https://github.com/contentacms/contenta_jsonapi_project) "the community effort towards an API-First distribution for Drupal 8" as a "back-end ready to serve your decoupled sites."
        * [Contenta Makes Your Content Happy](https://medium.com/@mateu.aguilo.bosch/contenta-makes-your-content-happy-6f76bbe0cdae)
    * Based on [Reservoir](https://dev.acquia.com/blog/introducing-reservoir-a-distribution-for-decoupling-drupal/19/06/2017/18296) "a distribution for decoupling Drupal".
    * (*And the list goes on and on, with more and more alternatives coming out backed by major players, since the fact that Drupal can only survive, if it can survive for much longer at all, in decoupled form*).
    * Based on anything (we're desperate) [Decoupling Drupal with Waterwheel for Ember and React, using Contenta, Reservoir or whatever](https://dev.acquia.com/blog/decoupling-drupal-with-waterwheel-for-ember-and-react/26/06/2017/18381?utm_source=The+Weekly+Drop&utm_medium=email&utm_campaign=The_Weekly_Drop_Issue_296_06_29_2017)
* One or more front end websites or web applications which consume the data exposed by the Structured Content Server's REST API.
    * A wonderful example is the [Contenta contenta Vuejs + Nuxt.js demo](https://github.com/contentacms/contenta_vue_nuxt) 
    * Another example, this time with a REST API and a React.js front end: Ejemplo: [Headless Drupal — Build a Drupal 8 API with a ReactJS Front-End](https://medium.com/@Userium/headless-drupal-build-a-drupal-8-api-with-a-reactjs-front-end-e43bf0fb94db)
    * What we might try doing would be what we are calling a Drupal 8 "popout theme", that is, a front end app written in React.js or Vue.js capable of serving both as a bona fide Drupal theme as well as a standalone front end web application, "popped out" of Drupal and having no dependencies on it.

This very attractive alternative represents immense gains at the cost of going through a classic Drupal 8 migration process.

#### Stage 3. Drupal 8 as the API-First CMS only, with completely decoupled Structured Content Server and Front End Client Web Application instances

Leave only API-First CMS duties to Drupal 8 (or even the old legacay Drupal 6 or 7 site for the time being - later on we'll show you how!) and "popout" both an autonomous Structured Content Server (based on NodeJS/ExpressJS/MongoDB o Golang o Python or any modern serer side language or framework) and a Vue.js or React.js based front end client web application.

#### Stage 4. Replace Drupal 8 as CMS with another more scalable and modifiable API-First CMS that was genuinely designed for that job.

This would consume, certainly, the "withering away of Drupal" the content monolith.

Examples of API first CMS:

* Open source    
    * [Ponzu (golang)](https://docs.ponzu-cms.org/)
    * [Django-CMS ( Python)](https://www.django-cms.org/en/)
    * [Directus (php + js (backbone))](https://getdirectus.com/)
    * [Keystone (JS + MongoDB)](http://keystonejs.com/) is not, strictly speaking, an API-First CMS, but it does use MongoDB directly and its architecture does implement a strict Content Model, and the beginings of an API does exist. It is actually a more than worthy candidate for forking, since its latest version sports a React.js based CMS admin interface. (Note: it appears to be somewhat [inactive at present](https://github.com/keystonejs/keystone/commits/master), however. But was a worthy contender for years.) 
    * [Wordpress Calypso](https://github.com/Automattic/wp-calypso) Neither is this an API-First CMS, but it does contain valuable ideas.

> **Important note**: So there is a gigantic paucity of free software and open source offerings in the API-First CMS category. And many which do emerge are following a disturbing tendency to die out. The cutting edge, unfortunately, lies in the paid for (and hugely expensive) CMS as a service alternatives. Whose API reference docs are extremely worthy of review and reflect very advanced thinking in this arena. See https://headlesscms.org/ for an up-to-date list. And see the very interesting [Lullabot authored API-First CMS lineup video](https://www.youtube.com/watch?v=KF9gG_bkUDo) 

* Commercial API-First CMS
    * [Contentful](https://www.contentful.com/)
        Contentful also provides a Structured Content Server as part of its cloud-based offering.
        * [Contentful Concepts](https://www.contentful.com/developers/docs/concepts/)
        * [**Contentful Data Model Concepts**](https://www.contentful.com/developers/docs/concepts/data-model/)
        * [Contentful Docs](https://www.contentful.com/developers/docs/)
        * [API References - Content Deliver, Content Management, Content Preview, Image APIs](https://www.contentful.com/developers/docs/references/)
    * [Cosmic JS](https://cosmicjs.com/)
        * [Knowledge Base](https://cosmicjs.com/knowledge-base)
        * [Github client app repos and tools](https://github.com/cosmicjs)
        * [API documentation](https://cosmicjs.com/docs/rest)
        * [imgix alternative to cloudinary](https://www.imgix.com/)
 
As a result of this current situation, in the AWebFactory case study shared here, we shall have two phases:

* Phase 1: Use a private instance of the legacy Drupal 6 site, modified by the addition of modules we shall be sharing here, as a temporary API-First CMS solution.
* Phase 2: Roll our own using a Vue.js admin panel based solution (which will also be shared here) when everything else is working.

### Special Mention: "Intelligent" Static Site Generators

While an API-First CMS will have, as its primary responsability, the function of persisting content on the SCS (Structured Content Server), it should also serve a very widely-used alternative for many projects: "intelligent" Static Site Generators, such as [Gatsby](https://github.com/gatsbyjs/gatsby), authored by ex-Drupalista Kyle Matthews. Interestingly, however, Gatsby as well as most static site generators use a text editor and GitHub as the CMS.

This is a strong up-and-coming tendency. While Gatsby is one of the best examples see this [list of Static Site Generators](https://www.staticgen.com/).

### And now for something completely... real

Let's now go on to our featured case study, AWebFactory.com, the making of.

\pagebreak
