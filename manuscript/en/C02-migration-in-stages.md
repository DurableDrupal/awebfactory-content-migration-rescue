## Chapter 2. Migration in Stages towards Decoupled, API First Content Modeling, Architecture, Management and Delivery.

We have now landed in this brave new world of decoupled structured content, which is constantly traveling between stacks of different software servers and clients: a central server, an admin app to manage the content stored on that server (CMS) and one or more client web apps using that content to meet users' needs.

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

However, we don't have to jump over to an all-new technology stack lock, stock and barrel, all at once.

For those who for any reason whatsoever prefer to take things a step at a time, at a more gradual pace, in this chapter we'll see how we can arrive at the same objective in gradual stages.

### A Four Stage Gradual Approach to the Migration Process

#### Stage 1. Migrate to Drupal 8. Apply Structured Content Model

Use a Content Strategy to refine the Content Model and refactor the Content Types and their attributes.

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

A prototype or provisional production version can now run, without the final Full Stack JavaScript Architecture, but with gains made in terms of a refactored Content Model.

#### Stage 2. 




\pagebreak
