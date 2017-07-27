## Chapter 3. Case Study: AWebFactory.com

### Where are we coming from? Where are we going?

Let's take a step back and get a good look at the Migration Process we have before us as we dive into the nitty gritty of the case study at hand: the migration of AWebFactory.com. What do we have now and What will we have when the migration is complete? See Figure 1.

![Migration from legacy Drupal to Full Stack](img/migration01.png)

But, it's not about mechanically shunting the legacy content over to a new system. And it's certainly not about making your content feel happy or anything else. It's about discovering that model your content can properly fill, in order to satisfy the needs of your new Business Model. It's about the [Content Model](#ContentModel).

> We again encourage all readers of this book to master the [Content Modeling Series](http://www.clevegibbon.com/content-modeling/) of articles by Cleve Gibbon. Doing so provides a good foundation for tackling the Design and Implementation of your Content Strategy and Model.

### Drilling down. Anatomy of the Content Model

So modeling your content is the discovery of composable [Content Types](#ContentType) made up of [Content Attributes](#ContentAttribute), constituting the business domain based building blocks for the design and implementation of that architecture capable of supporting your Content Strategy.

More simply put, if, for example, your you are selling T-Shirts, you will have a Content Type Product with Content Attributes SKU, Price, Stock, and so on. And there will be a workflow for the creation, publication, modification and deletion of these product items. And so on.

#### The Content Modeling Process

Now, there is nothing new or mysterious about "Content Model" or "Content Strategy". The Content Model arises as part of the same iterative and incremental software development process any competent development team will be using these days in the development of any software project.

It simply turns out that the application of an iterative and incremental non-waterfall Agile/Lean UX process to content-centric applications has, as one of its central deliverable, a Content Model.

> See these important Lean UX references (don't go out of the building without knowing them!):
- Jeff Gothelf, [Lean UX Applying Lean Principles to Improve User Experience](http://shop.oreilly.com/product/0636920021827.do)
- Laura Klein, [UX for Lean Startups](http://shop.oreilly.com/product/0636920026242.do)
- [Anthony Viviano](http://uxdesign.smashingmagazine.com/author/anthony-viviano/?rel=author), [The Lean UX Manifesto: Principle-Driven Design](http://uxdesign.smashingmagazine.com/2014/01/08/lean-ux-manifesto-principle-driven-design/)

In a competent software development team of any kind, the initial planning phase leading to kick-off will include the following:

* Business Requirements Gathering and Business Modeling
* Requirement Gathering and the definition of Project Scope
* The listing of value hypotheses and sub-hypotheses together with the definition of the minimum set of features required to test them (that is the minimum viable product, the scope of the project)
* A collaborative Design Studio user experience brainstorming among the entire team to associate user experience wireframes with the features
* The decomposition of the features into user stories and the project backlog

> See my presentation slides [Setting up a Reusable and DurableDrupal
Lean Process Factory](http://awebfactory.com/drupalcon2015lean/#/) for how I view the application of an Agile/Lean UX process to content-centric applications for details.

Each user story in the backlog is then taken up by assigned team members, and the following process will be applied repeatedly:

* Together with the client, an acceptance test is written.
* Analysis is performed
    * Each user story is decomposed with the help of the Unified Modeling Language or similar into analytical objects theoretically capable of supporting the functionality involved.
    * These analytical objects are of three types: entity (data model), boundary (view) and controller, corresponding to the MVC (model-view-controller) pattern
    * Simultaneously, the boundary objects are associated with the front end mockups, the entity objects conform the domain model, and the controller objects conform the beginnings of a class model to ascertain the modules capable of supporting the business logic.
* Design is performed
    * The class or module diagram is refined from the controller objects
    * The data model is refined from the domain model
    * The presentation layer is refined from the boundary objects and mockups
* Implementation and unit testing is performed
* Acceptance testing is performed
* Rinse and repeat all steps until the Acceptance test is passed

> Note: The acceptance test should usually involve [end-to-end testing](https://dzone.com/articles/nightmare-of-end-to-end-testing): notice that unit testing should really be considered part of the coding discipline.

Of course there are many variations of this theme. Teams work in different ways. But what we want to understand at this point, is, that in the case of a content-centric application, the content management workflow will form part of the feature set, and the data model being implemented will include a subset structuring the content, the [Content Model](#ContentModel).

Which comes simply from software development best practices, and "Content Model" should cease being considered a rockstar buzzword, and certainly was not invented by anyone in 2013. NPR in 2009 make reference to the same kind of structure as part of their famous "COPE" (Create Once, Publish Everywhere) which we mentioned in an earlier chapter, and which inspires us all.

It is in this best practices process engineering context that the [Content Modeling Series](http://www.clevegibbon.com/content-modeling/) of articles recommended above were written, and why they are important for us to understand as we kick off projects involving the development of content-centric applications and systems.

#### The Content Model Schema

Now, at the end of the day, a Content Model must be implemented as a Database Schema of some kind. In our case study involving AWebFactory.com, our target migration database is [MongoDB](https://www.mongodb.com/download-center#community).

On the [SCS](#SCS "Structured Content Server"), [Content Types](#ContentType) making up the [Content Model](#ContentModel) are implemented as valid [Mongoose Schema](http://mongoosejs.com/docs/guide.html). These are organized as composable hierarchies of [Content Attributes](#ContentAttribute). These may be either a primitive Content Attributes corresponding to a
valid [Mongoose SchemaType](#MongooseSchemaType "such as String, Number, etc."); or an embeddable sub-schema, itself made up of Mongoose SchemaType attributes, and sometimes even other embeddable sub-schema in turn. A Content Attribute mny also be specified as a JSON object, or as an array of Content Attributes.

A diagram will help us visualize the different kinds of [Content Attributes](#ContentAttribute) composing the domain specific [Content Types](#ContentType).

![Mongoose, Base and Custom Content Attributes, composing the Domain Specific Content Model](img/content-model.png)

Primitive Content Attributes are the SchemaTypes permitted by the Database ODM (Object Document Model) being used: Mongoose in our case. If we were using a relational database, this would correspond to the Data Types permitted in a relational database oriented ORM (Object Relational Model), for example [Sequelize](http://docs.sequelizejs.com/), used in Node.js code with the MySql databases.

Base Content Attributes are Content Attributes often reused in content-centric applications, and are necessary either because they form separate collections or because they require built-in consistency for repeated embedded use.

Domain specific Content Attributes are those arising out of the analysis and design of the domain model of the specific application, its scope and business model context. Article for blogs or newspapers, Product for e-commerce applications.

And Content Items (instantiations of Content Types) in the form of MongoDB Documents, are made created, accessed, updated and deleted via the REST API exposed to CWA (Client Web Applications). The Mongoose Schema are made up of key value pairs describing individual Document Properties.

Now let's drill down in this second diagram to help us grasp in more detailed fashion the composition of the Author Content Type within the Content Model as a whole:

![Domain Specific Author Content Type](img/author-content-type.png)

We can see primitive ODM level, Base and Domain specific [Content Attributes](#ContentAttribute).

Here is a code sample implementing the `Author` [Content Type](#ContentType) as a [Mongoose Schema](#MongooseSchema) on the [SCS](#SCS "Structured Content Server"):

```javascript
// author.js
var mongoose = require('./db')
var ItemInfo = require('./content-attributes/item-info').ItemInfo
var Person = require('./content-attributes/person').Person
var TextLong = require('./content-attributes/text-long').TextLong
var Link = require('./content-attributes/link').Link
var Media = require('./content-attributes/media').Media

var authorSchema = mongoose.Schema({
  itemInfo: ItemInfo.schema,
  authorPersonalInfo: Person.schema,
  authorBio: {
               summary: TextLong.schema,
               body: TextLong.schema,
  },
  authorFacebook: Link.schema,
  authorTwitter: Link.schema,
  authorWebsite: Link.schema,
  authorWebsiteImage: Media.schema,
  authorYouTube: Link.schema,
  publication: {type: mongoose.Schema.Types.ObjectId, ref: 'Publication'},
  articlesByAuthor: [{type: mongoose.Schema.Types.ObjectId, ref: 'Article'}]
})

exports.Author = mongoose.model('Author', authorSchema)
```

None of the Schema document properties in the example are "primitive" [Mongoose SchemaType](#MongooseSchemaType "such as String, Number, etc.") but are, rather, embedded sub-schema, for example: `Link.schema`

In the case of `authorWebsite`, for example, an embedded field, the sub schema is used for the sake of consistency. However, in the case of `publication`, a reference, the field is not directly embedded here, but instead is to be populated automagically by MongoDB and Mongoose according to the referenced sub-schema, when the [Content Item](#ContentItem) document is instantiated.  In this case, the sub-schema lives in its own MongoDB Collection, since it may be frequently listed by itself. The same is true of the array of references `articlesByAuthor`.

We can see this more clearly from an example of a REST API GET operation granting access to listings of Author documents (Content Item instantiations (documents) of the Author Content Type (Schema) MongoDB collections).

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
  query.populate("publication")
  query.populate("articlesByAuthor")
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

The embedded sub-schemas will be read from the document exactly as they were written in the POST or PUT operation. The `publication` and the array of `articlesByAuthor` will be obtained via a call to the [Mongoose Query populate() function](http://mongoosejs.com/docs/populate.html), which marshalls additional sub-queries based on the array of document indices originally written to and now read from the database (for those that like such analogies, this would be like a `JOIN` in a relational database).

The dependencies of the Author schema are implemented as embeddable sub-schemas as follows:

```javascript
// item-info.js
// ...
  itemName: String,
  itemSlug: String,
  idLegacy: Number,
  language: String,
  published: Boolean,
  publishedDate: Date,
  disabled: Boolean,
  createdAt: Date, // date and time
  modifiedAt: Date // date and time
  revisionId: Number, // probably generated as uuid
  workflowState: WorkflowState.schema
// ...
```

```javascript
// person.js
// ...
  gender: String,
  dob: Date,
  name: Name.schema,
  address: Address.schema,
  homePhone: Phone.schema,
  workPhone: Phone.schema,
  cellphone: Phone.schema,
  email: Email.schema,
  avatar: Media.schema
```

```javascript
// name.js
// ...
    title: String,
    first: String,
    middle: String,
    maternal: String,
    paternal: String,
    last: String,
// ...
```

```javascript
// address.js
var mongoose = require('../db')

var addressSchema = mongoose.Schema({
  street1: String,
  street2: String,
  city: String,
  state: String,
  postcode: Number,
  country: String,
  timezone: String
})

exports.Address = mongoose.model('Address', addressSchema)
```

```javascript
// text-long.js
// ...
  text: String,
  type: String,  // html, markdown
  encoding: String, // utf-8
  maxLength: Number
// ...
```

```javascript
// link.js
var mongoose = require('../db')

var linkSchema = mongoose.Schema({
  idLegacy: Number,
  linkUrl: String,
  linkTitle: String,
})

exports.Link = mongoose.model('Link', linkSchema)
```

```javascript
// media.js
// ...
  mediaTitle: String,
  mediaSlug: String,
  mediaFile: File.schema
// ...
```

```javascript
// file.js
var mongoose = require('../db')

var fileSchema = mongoose.Schema({
  fidLegacy: Number,
  uriLegacy: String,
  filePath: String,
  fileUri: String,
  fileMimeType: String,
  fileSize: Number,
})

exports.File = mongoose.model('File', fileSchema)
```

Chapters 6 and 7, covering the migration implementation and execution in more detail, will cast more light on this subject, and the full source code will be shared in public repositories.

For now, suffice it is to understand that the Content Model is based on database schema, instantiated as Content Item collections returned as documents when GET queries are requested against the SCS REST API.

> **Important note**: We cannot emphasize enough that the Content Type and its instantiated Content Item have **nothing to do at all with rendering**, neither as part of the Content Management form in the CMS (or any specified editing widget), nor as part of the rendering of the content item in the CWA. This principle of structured content and separation of concerns, the very thing that makes [COPE](#Cope "Create Once and Publish Everywhere") possible, is violated in practically all "API-First" CMSes, or else hidden behind paywalls in closed "Cloud CMS" systems. (*Which is why Contenta would be so cool if it wasn't based hobbled by Drupal 8 being the only [SCS](#SCS "Structured Content Server") option*).

### The AWebFactory.com case study migration from start to finish

Now that we have a clear idea of the Content Model itself, let's review the actual steps that need to be taken in order to carry out the Content Migration process we will be following in the upcoming chapters for our two cases studies: 

* **AWebFactory** awebfactory.com (Our main case study)
    * Legacy site is **Drupal 6**
* **Lit online literary workshop** http://lit-dev.awebfactory.net/ (Our secondary case study)
    * Legacy site is **Drupal 7**

Examples of both cases will be included throughout this book.

#### Legacy content inventory

Drush Scripts are developed to ascertain lists of legacy content items, and its existing structure (content types and categories), if any. Modules like drush view xxx and view content inventory are a great help here. See [Chapter 4. AWebFactory.com. Content Inventory.](#Chapter4) for details and access to code.

#### [Analysis and Design](#AnalysisAndDesign) of the target Content Model

The target [Content Model](#ContentModel) is analyzed and designed according to the [Business Model](#BusinessModel) and [Feature List](#FeatureList). Details, code and How Tos in [Chapter 5. AWebFactory.com. Content Modeling.](#Chapter5).

> Note: It's important to take into account that this modeling is carried out in the context of the new Business Model and Functional Requirements, and that the legacy content structure will have to adapt to the new target model as a result.

#### Initial migration iteration

The [SCS](#SCS "Structured Content Server") is implemented with [Node.js](https://nodejs.org/en/), [Express.js](https://expressjs.com/) and [MongoDB Database](https://www.mongodb.com/community).

The initial Content Model Design is prototyped as [Mongoose Schema](#MongooseSchema). 

On the Legacy side, an initial version of the Drush Migration Script is written and connected to the SCS REST API, and initial testing is performed. Details, code and How Tos in [Chapter 6. AWebFactory.com. Initial Migration Iteration](#Chapter6).

#### Complete iterative and incremental migration to the SCS of the legacy content via adaptive drush scripts

The Legacy side Drush Script is extended to cover adaptation of as much legacy content to the target 

Details, code and How Tos in [Chapter 7. AWebFactory.com. Complete Migration Iterations and Testing for the entire Content Model](#Chapter7).

#### Writing an initial Client Web Application

Details, code and How Tos in [Chapter 8. AWebFactory.com. Vue.js/Nuxt.js based universal Front EndApp](#Chapter8).

#### Characteristics of the API-First CMS

Details, code and How Tos in [Chapter9. AWebFactory.com. API-First CMS](#Chapter9).

#### Using the Legacy Site as the CMS

Details, code and How Tos in [Chapter 10. AWebFactory.com. API-First CMS. Use the Legacy Site.](#Chapter10)

#### An Up-to-date review of current API-First Alternatives

Details, code and How Tos in [Chapter 11. AWebFactory.com. API-First CMS. Alternatives.](#Chapter11)

#### Rolling your own API-First CMS

Details, code and How Tos in [Chapter 12. AWebFactory.com. API-First CMS. Roll our own.](#Chapter12)

\pagebreak
