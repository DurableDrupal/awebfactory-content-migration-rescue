## Chapter 3. Case Study: AWebFactory.com

- [Chapter 3. Case Study: AWebFactory.com](#chapter-3-case-study-awebfactory-com)
    - [Where are we coming from? Where are we going?](#where-are-we-coming-from-where-are-we-going)
    - [Drilling down: Anatomy of the Content Model](#drilling-down-anatomy-of-the-content-model)
        - [The Content Modeling Process](#the-content-modeling-process)
        - [The Content Model Schema](#the-content-model-schema)
        - [Primitive, Base and Application Domain specific Custom Content Attributes](#primitive-base-and-application-domain-specific-custom-content-attributes)
    - [Concrete Steps Involved in Carrying Out the Migration](#concrete-steps-involved-in-carrying-out-the-migration)
        - [Legacy Content Inventory](#legacy-content-inventory)
            - [Drush Scripts to ascertain lists of legacy content items, and its existing structure (content types and categories)](#drush-scripts-to-ascertain-lists-of-legacy-content-items-and-its-existing-structure-content-types-and-categories)
        - [Content Modeling](#content-modeling)
            - [The Target Content Model](#the-target-content-model)
            - [Adapting Legacy Content to the Target Content Model](#adapting-legacy-content-to-the-target-content-model)
        - [Implementation of the Content Model on the SCS](#implementation-of-the-content-model-on-the-scs)
        - [Adaptation of legacy content to the target Content Model via Drush Scripts.](#adaptation-of-legacy-content-to-the-target-content-model-via-drush-scripts)
        - [Iterative and Incremental Migration to the SCS of the legacy content via Adaptive Drush Scripts](#iterative-and-incremental-migration-to-the-scs-of-the-legacy-content-via-adaptive-drush-scripts)
        - [Testing the Structured Content Server](#testing-the-structured-content-server)
        - [Writing an initial Client Web Application](#writing-an-initial-client-web-application)

### Where are we coming from? Where are we going?

Let's take a step back and get a good look at the Migration Process we have before us before we get involved in the nitty gritty of the case study at hand. What do we have now and What will we have when the migration is complete?

![Migration from legacy Drupal to Full Stack](img/migration01.png)

But, it's not about mechanically shunting the legacy content over to a new system. And it's certainly not about making your content happy. It's about discovering that model your content can properly fill, in order to satisfy the needs of your new Business Model. It's about the [Content Model](#ContentModel).

> We again encourage all readers of this book to master the [Content Modeling Series](http://www.clevegibbon.com/content-modeling/) of articles by Cleve Gibbon. Doing so provides a good foundation for tackling the Design and Implementation of your Content Strategy and Model. 

### Drilling down: Anatomy of the Content Model

So modeling your content is the discovery of composable [Content Types](#ContentType) made up of [Content Attributes](#ContentAttribute), constituting the business domain based building blocks for the design and implementation of that architecture capable of supporting your Content Strategy. 

More simply put, if, for example, your you are selling T-Shirts, you will have a Content Type Product with Content Attributes SKU, Price, Stock, and so on. And there will be a workflow for the creation, publication, modification and deletion of these product items. And so on.

#### The Content Modeling Process

Now, there is nothing new or mysterious about "Content Model" or "Content Strategy". The Content Model arises as part of the same iterative and incremental software development process any competent development team will be using these days in the development of any software project.

It simply turns out that the application of an iterative and incremental non-waterfall Agile/Lean process to content-centric applications has, as an important deliverable, a Content Model.

In a competent software development team of any kind, the initial planning phase leading to kick-off will include the following:

* Business Requirements Gathering and Busines Modeling
* Requirement Gathering and the definition of Project Scope
* The listing of value hypotheses and sub-hypotheses together with the definition of the minimum set of features required to test them (that is the minimum viable product, the scope of the project)
* A collaborative Design Studio user experience brainstorming among the entire team to associate user experience wireframes with the features.
* The decomposition of the features into user stories and the project backlog

> See my presentation slides [Setting up a Reusable and DurableDrupal
Lean Process Factory](http://awebfactory.com/drupalcon2015lean/#/) for how I view the application of an Agile/Lean UX process to content-centric applications for details.

Each user story in the backlog is then taken up by assigned team members, and the following process will be applied repeatedly:

* Together with the client, an accpetance test is written.
* Analysis is performed
    * Each user story is decomposed with the help of the Unified Modeling Language or similar into analytical objects theoretically capable of supporting the functionality involved.
    * These analytical objects are of three types: entity (data model), boundary (view) and controller, corresponding to the MVC (model-view-controller) pattern. 
    * Simultaneously, the boundary objects are associated with the front end mockups, the entity objects conform the domain model, and the controller objects conform the beginnings of a class model to ascertain the modules capable of supporting the business logic.
* Design is performed
    * The class or module diagram is refined from the controller objects
    * The data model is refined from the domain model. 
    * The presentation layer is refined from the boundary objects and mockups
* Implementation and unit testing is performed
* Acceptance testing is performed
* Rinse and repeat all steps until the Acceptance test is passed. 

> Note: The acceptance test should usually involve [end-to-end testing](https://dzone.com/articles/nightmare-of-end-to-end-testing): notice that unit testing should really be considered part of the coding discipline.

Of course there are many variations of this theme. Teams work in different ways. But what we want to understand at this point, is, that in the case of a content-centric application, the content management workflow will form part of the feature set, and the data model being implemented will include a subset structuring the content, the content model.

Which comes simply from software development best practices, and "Content Model" should cease being considered a rockstar buzzword, and certainly was not invented by anyone in 2013. NPR in 2009 make reference to the same kind of structure as part of their famous "COPE" (Create Once, Publish Everywhere) which now inspires us all.

It is in this context that the [Content Modeling Series](http://www.clevegibbon.com/content-modeling/) of articles recommended above were written, and why they are important for us to understand if we are interested in the development of content-centric applications and systems.

#### The Content Model Schema

At the end of the day, a Content Model must be implemented as a Database Schema of some kind. In our case study involving AWebFactory.com, our target migration database is [MongoDB](https://www.mongodb.com/download-center#community).

On the [SCS](#SCS "Structured Content Server"), Content Types making up the Content Model are implemented on the basis of [Mongoose Schema](http://mongoosejs.com/docs/guide.html). And Content Items (instantiations of Content Types) in the form of MongoDB Documents, are made created, accessed, updated and deleted via the REST API exposed to CWA (Client Web Applications). The Mongoose Schema are made up of key value pairs describing individual Document Properties. The value of each property corresponds to its [SchemaType](http://mongoosejs.com/docs/schematypes.html).

Valid SchemaTypes:

* String
* Number
* Date
* Boolean
* Array
* Objectid
    * The primary key for a Collection of Documents
* Mixed
    * An anything goes, "non-schema" schema type
* Buffer
    * Useually used for binary data "blobs"

Example: Author Content Type

```
var mongoose = require('./db')
var Publication = require('./publication).Publication
var Person = require('./content-attributes/person').Person
var Image = require('./content-attributes/image').Image
var Link = require('./content-attributes/link').Link

var authorSchema = mongoose.Schema({
  idLegacy: Number,
  authorInfo: Person.schema,
  disabled: Boolean,
  authorProfileImage: Image.schema,
  authorGallery: [Image.schema],
  authorBio: { 
               summary: String.schema,
               body: String.schema,
  }, 
  authorFacebook: Link.schema,
  authorTwitter: Link.schema,
  authorWebsite: Link.schema,
  authorYouTube: Link.schema,
  publicationsWrittenFor: [{type: mongoose.Schema.Types.ObjectId, ref: 'Publication'}],
  createdOn: Date,
  modifiedOn: Date
})
  
exports.Author = mongoose.model('Author', authorSchema)
```

Most of the Schema document properties in the example are of well-known and recognizable SchemaTypes listed above.

There are two kinds, however, deserving of special mention:

* An array `[]` of ObjectId (collection primary index) references: `publicationsWrittenFor: [{type: mongoose.Schema.Types.ObjectId, ref: 'Publication'}]`
* Embedded sub-schema: `authorYouTube: Link.schema`

In the case of ..., an embedded field, the sub schema is used for the sake of consistency. However in the case of <Object...> the field is populated automagically by MongoDB and Mongoose .  In this case, the sub-schema lives in its own MongoDB Collection, since it may be frequently listed by itself....

We can see this more clearly from an example of a REST API GET operation granting access to listings of Author documents (Content Item instantiations (documents) of the Author Content Type (Schema)).

```javascript
var router = require('express').Router()
const Author = require('../../models/author').Author;

// API for /api/authors (authors collection requests)
router.get('/authors', function(req, res) {
  query = Author.find({})
  if (req.query.limit) {
    query.limit(req.query.limit)
  }
  if (req.query.sort) {
    query.sort(req.query.sort)
  }
  if (req.query.select) {
    query.select(req.query.select)
  }
  query.populate("publicationsWrittenFor")
  query.exec(function(err, authors) {
      if (err)
          return res.json({
              error: "Error fetching authors",
              error: err
          });
      else if (!authors)
          return res.json({
              error: "Error finding authors",
              error: err
          });
      res.send(authors);
  })
})
```

The embedded sub-schemas will be read from the document exactly as they were written in the POST or PUT operation. The array of referenced Publications are obtained via a call to the populate function, which executes additional sub-queries based on the array of document indices originally written to and now read from the database.

Chapters 6 and 7, covering the migration codebase in more detail, will cast more light on this subject.

For now, we understand at this point that the Content Model is based on database schema, instantiated into documents when GET queries are requested against the SCS REST API. 

> We cannot emphasize too much that the Content Type and its instantiated Content Item have **nothing to do at all with rendering**, neither as part of the Content Management form in the CMS (or any specified editing widget), nor as part of the rendering of the content item in the CWA. This principle of structured content and separation of concerns is violated in practically all "API-First" CMSes, or else hidden in the code of pay-only closed "Cloud CMS" systems.

#### Primitive, Base and Application Domain specific Custom Content Attributes

A diagram will help to grasp more clearly the composition of the Author Content Type within the Content Model as a whole.

<diagram with Article example>

We can see Primitive, Base and Domain specific Content Attributes in the Diagram.

Primitive Content Attributes are the SchemaTypes permitted by the Database ODM (Object Document Model) being used: Mongoose in our case. This corresponds to the Data Types permitted in a relational database oriented ORM (Object Relational Model), for example [Sequelize](http://docs.sequelizejs.com/), used in Node.js code using MySql databases.  

Base Content Attributes are Content Attributes often reused in content-centric applications, and are necessary either because they form separate collections or because they require built-in consistency for repeated embedded use.

Domain specific Content Attributes are those arising out of the analysis and design of the domain model of the specific application, its scope and business model context. Article for blogs or newspapers, Product for e-commerce applications.

### Concrete Steps Involved in Carrying Out the Migration

Now that we have a clear idea of the Content Model itself, let's take a look at the actual steps that need to be taken from start to finish in order to complete the Content Migration:

* Legacy Content Inventory
    * Drush Scripts to ascertain lists of legacy content items, and its existing structure (content types and categories)
* Content Modeling
    * The Target Content Model
    * Adapting Legacy Content to the Target Content Model
* Implementation of the Content Model on the SCS
* Adaptation of legacy content to the target Content Model via Drush Scripts.
* Iterative and Incremental Migration to the SCS of the legacy content via Adaptive Drush Scripts
* Testing the Structured Content Server 
* Writing an initial Client Web Application

#### Legacy Content Inventory

Drush scripts are developed purely for this purpose, leaning heavily upon modules like drush view.

##### Drush Scripts to ascertain lists of legacy content items, and its existing structure (content types and categories)

#### Content Modeling

##### The Target Content Model

##### Adapting Legacy Content to the Target Content Model

#### Implementation of the Content Model on the SCS

#### Adaptation of legacy content to the target Content Model via Drush Scripts.

#### Iterative and Incremental Migration to the SCS of the legacy content via Adaptive Drush Scripts

#### Testing the Structured Content Server 

#### Writing an initial Client Web Application

\pagebreak
