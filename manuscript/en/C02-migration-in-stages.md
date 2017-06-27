## Chapter 2. Migration in Stages

We have now landed in this brave new world of decoupled architectures enabling the Management and Delivery of Structured Content Models. Where content constantly travels between stacks of different software servers and clients: there's a central server, and there's an admin app to manage the content stored on that server (CMS) and one or more client web apps using that content to meet users' needs.

In order to do this the content in our legacy Drupal app must be audited and inventoried, analyzed and curated, so that the new and improved content model may be determined. The content must then be transformed and rescued by extracting it and storing it according to that Content Model on the Structured Content Server, where it is exposed via a REST API to be consumed by Client Web Applications. The Workflow must be designed, and an API First CMS implemented. Alternative architectural stacks that could be used to implement all of this must be evaluated and candidate architectures prioritized, planned and budgeted.

### The Migration Process

Migration of our content to such a new system, then, requires that we pass through four stages:

* A thorough content audit, and analysis of our inventory, with the aim of analyzing and organizing that content in a more structured manner. We'll get a clearer picture of all our content types, the content attributes forming them, and the relationships between them, in short, a clearer picture of our content model.
* The implementation of a central server capable of making available our now fully structured content to multiple client web applications and native apps via a standard REST API.
* A modern API first CMS (Content Management System) whose sole responsibility is to enable the creation and editing of content ready to be published, in the context of a user role based workflow appropriate to staff needs.
* The implementation of at least one client web applications that consume the REST API made available by the structured content server.

Now, this could be done all at once by completely replacing Drupal with stack such as the following:

* A modern, customized API first, "headless" CMS (Content Management System) based on React.js or Vue.js administration panel.
* A SCS (structured content server) using Node.js, Express.js, MongoDB and schemas using an ODM (object document modeler) such as Mongoose, in order to structure the persistence and API of our Content Model.
* A CWA (Client Web Application) built as a universal SPA (single page application) based also on React.js or Vue.js.

Which is precisely what we have decided upon for AWebFactory.com, the case study being followed here on a day to day basis. However, we don't have to jump over to an all-new technology stack lock, stock and barrel, all at once. So before we go there, let's examine several more gradual alternatives, which might very well be optimum for many projects and circumstances.

### A Four-Stage Gradual Approach to the Migration Process

#### Stage 1. Drupal 8 as an All in One Vehicle for a Refactored Structured Content Model.

Use a Content Strategy to refine the legacy Content Model (or lack of one) and refactor the Content Types and their attributes into a new target model reflecting current level of understanding of business needs.

Then utilize Drupal 8 as the Structured Content Server, the CMS and Content Delivery application all in one.

This is not the same as embracing Drupal as an all in one old-fashioned and isolated monolithic solution. It can be achieved by adopting a process like the following:

* Specify the Content Model, perhaps using a UML diagram editor, such as [Astah Community](http://astah.net/editions/community), or else a mind mapping tool.
* Completely refactor the Content Model using D8 bundles.
* Import the legacy content model
    * Using the [Migration module]
    * Using the [Migration Plus module] in order to export and import as JSON/XML.
    * [Jeff Geerling: Migrate a custom JSON feed in Drupal 8 with Migrate Source JSON](http://www.jeffgeerling.com/blog/2016/migrate-custom-json-feed-drupal-8-migrate-source-json)
    * [Mike Ryan: Drupal 8 plugins for XML and JSON migrations](http://virtuoso-performance.com/blog/mikeryan/drupal-8-plugins-for-xml-and-json-migrations)
    * Numerous examples from Migrate Plus
    * [Drupal 8 JSON custom migration, on the basis of all of the above, took the 'Product' example from Jeff Geerling that explained the migrate_source_json which is now part of the migrate_plus module to make their own example](https://colorfield.be/blog/drupal-8-json-custom-migration)
* Use one of the Drupal 8 responsive themes, such as [Bootstrap](http://getbootstrap.com) or [Zurb Foundation](http://foundation.zurb.com/) in order for the web application to run on any device.

A prototype or provisional production version can now run, without the a decoupled Full Stack JavaScript Architecture, but with important gains made in terms of a refactored Content Model.

#### Stage 2. Drupal 8 as an API First CMS and Structured Content Server, with decoupled front end JavaScript framework based websites and web applications.

In this more ambitious and highly rewarding stage:

* Drupal 8 functions as a tightly coupled API First CMS and Structured Content Server
    * Based on a REST API enabling module
        * NOT one of the pseudo REST APIs based on idiosyncratic Drupal entities, but rather a content model based standard API following best practices, such as `/api/posts`, `/api/posts/:id` for GET, PUT (update, upsert), POST (create), DELETE. 
    * Based on [Contenta CMS](https://github.com/contentacms/contenta_jsonapi_project) "the community effort towards an API-First distribution for Drupal 8" as a "back-end ready to serve your decoupled sites."
    * Based on [Reservoir](https://dev.acquia.com/blog/introducing-reservoir-a-distribution-for-decoupling-drupal/19/06/2017/18296) "a distribution for decoupling Drupal".
* One or more front end websites or web applications which consume the data exposed by the Structured Content Server's REST API.
    * A wonderful example is the [Contenta contenta Vuejs + Nuxt.js demo](https://github.com/contentacms/contenta_vue_nuxt) 
    * Another example, this time with a REST API and a React.js front end: Ejemplo: [Headless Drupal — Build a Drupal 8 API with a ReactJS Front-End](https://medium.com/@Userium/headless-drupal-build-a-drupal-8-api-with-a-reactjs-front-end-e43bf0fb94db)
    * What we might try doing would be what we are calling a Drupal 8 "popout theme", that is, a front end app written in React.js or Vue.js capable of serving both as a bona fide Drupal theme as well as a standalone front end web application, "popped out" of Drupal and having no dependencies on it.

This very attractive alternative represents immense gains at the cost of going through a classic Drupal 8 migration process.

#### Stage 3. Drupal 8 as the API-First CMS only, with completely decoupled Structured Content Server and Front End Client Web Application instances

Leave only API-First CMS duties to Drupal 8 (or even the old legacay Drupal 6 or 7 site for the time being - later on we'll show you how!) and "popout" both an autonomous Structured Content Server (based on NodeJS/ExpressJS/MongoDB o Golang o Python or any modern serer side language or framework) and a Vue.js or React.js based front end client web application.

#### Stage 4. Replace Drupal 8 as CMS con another more scalable and modifiable CMS thas was genuinely designed for the job.

This would consume, certainly, the "withering away of Drupal" the content monolith.

Examples of API first CMS:
    
* [Ponzu (golang)](https://docs.ponzu-cms.org/)
* [Django-CMS ( Python)](https://www.django-cms.org/en/)
* [Directus (php + js (backbone))](https://getdirectus.com/)
* [Keystone (JS + MongoDB)](http://keystonejs.com/) is not, strictly speaking, an API-First CMS, but it does use MongoDB directly and its architecture does implement a strict Content Model, and the beginings of an API does exist. It is actually a more than worthy candidate for forking, since its latest version sports a React.js based CMS admin interface. (Note: it appears to be somewhat [inactive at present](https://github.com/keystonejs/keystone/commits/master), however. But was a worthy contender for years.) 
* [Wordpress Calypso](https://github.com/Automattic/wp-calypso)

**Important note**: There is a gigantic paucity in free software and open source offerings in the API-First CMS category. The cutting edge, unfortunately, lies in the paid for (and hugely expensive) CMS as a service alternatives. Whose API reference docs are extremely worthy of review and reflect very advanced thinking in this arena.

* [Contentful]
    * [Contentful API reference docs]
* two CMS
* three CMS

**"Intelligent" Static Site Generators**

Apart from the question of API-First CMS, a very active alternative for many projects is the up-and-coming "intelligent" Static Site Generator field. One of the best examples is that engineered by ex-Drupalista 
Nota: hay muy pocos CMS de código libre. Los pocos que hay se orientan a Static Site Generators (una opción digna sería Gatsby para sitios que no necesitan ser muy dinámicos) (ver https://www.staticgen.com/ para lista de generadores). La mayoria de CMS api first son propietarios. Ver https://headlesscms.org/ 

Very worthy of investigation would be migration tools from Drupal to Gatsby.

\pagebreak
