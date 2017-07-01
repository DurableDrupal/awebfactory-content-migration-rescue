## Chapter 3. Case Study: AWebFactory.com

### Where are we coming from? Where are we going?

Let's take a step back and get a good look at the Migration Process we have before us. What do we have now and What will we have when the migration is complete?

![Migration from legacy Drupal to Full Stack](img/migration01.png)

But, it's not about getting the content over to the new system. And it's certainly not about making your content happy. It's about discovering the future-proof Content Model your content can properly fill. 

### What is a Content Model really? What does it mean to model our content?

So what's a Content Model? As we saw briefly in the last chapter, that has something to do with structuring your content and freeing it of presentation cruft, so that it can be "created once" and "published everywhere".

According to ..., the Content Model is....

So how can we do that?

By modeling your content so that it is found to be expressing itself in terms of composable content types made up of content attributes based on common types.

For that to happen we need a set of re-usable content attributes, most of which will be universal for Content Management Systems, and a few of which we will have to make up ourselves. But not from scratch.

Examples of this.

Why don't we just make up our content types from primitives? Because then we will have redundancy and a lack of document schema consistency. And one day in the future, we will have to rescue our content again. 

But if we adopt this process, we won't have to do that again. 

### A Content Attribute Alphabet

A survey of many field-based CMSes gives us the following as a starting point for an alphabet of reusable Content Attributes (which are going to be used in more than one Content Type):

* Address
* Location
* Person
* User
* Role
* Text
* Date
* Event

There is no relationship or data included linking the Content Attribute to any widget, and no information included concerning forms of presentation, neither in the CMS or in the Content Delivery rendering. This separation of concerns is fundamental to Structured Content and is violated by practically all the so-called API-First CMSes.

Let's get this drawn up as a Class Diagram

Now, this isn't cast in stone, it can be augmented if the web application domain warrants that (when a Content Attribute basic to the application domain is going to be used in the composition of more than one, and usually in multiple, Content Type.

And to create them, we don't do anything proper only to our system, we use standard Mongoose schema which are instantly recognizable by any back end programmer and subject to future automation and generation via templates. A Ponzu-like cli will be written in the future, for example. Pull request anyone?

So in this case study we will hand craft the content types, but this will leave you with practically everything you need for practically any content domain based web application. And with clear blueprints for easily adding more base content attributes, and for composing more content types from them.

Then, once the Model is implemented, it is a question of having the Drush migration script send in the appropriate data objects in the appropriate form according to the schema.

### The DurableDrupal Content Migration Rescue, Revisited

So, what are the tasks that really need to be perfromed in order to arrive at our goal?

* Content Inventory
* Content Modeling
    * The Target Content Model
    * Adapting Legacy Content to the Target Model
* Initial Migration
* Complete Migration
* Testing the Structured Content Server

### The Drush Migration Script





\pagebreak
