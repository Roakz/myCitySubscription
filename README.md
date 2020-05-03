# myCitySubscription

A subscription based donation software for not-for-profits and the likes

---

Links to other repositories:
- https://github.com/Roakz/myCitySubscription-react-native

---

## Contents
1. [The Problem](#the-Problem)
2. [The Solution](#the-Solution)
3. [The Application](#the-application)
    * [Public Interface](#public-interface)
    * [Administrative Interface](#admin-portal)
    * [Content Portal](#digital-asset)
4. [Tech Stack](#tech-stack)
5. [Contribute](#contribute)
6. [Local Environment](#local-environment)
  
---

## The Problem

Modern society has become one hell of a beast to keep up with. The financial demands to keep a roof over our heads and a bed to sleep in at night are a privilege that only some of us are fortunate enough to have/afford.

When walking the streets of Brisbane City - where I live - I often see people sleeping rough. It's not an uncommon sight to see. We also have some pretty amazing not-for-profit  organizations doing what they can to provide support to people who don't share the luxury of roofs over their heads, or a warm bed to sleep in at night.

For example, Orange Sky is an organization that provides a laundry services for people doing it rough; and Beddown who provide temporary sleeping arrangements to give people a rest from a tougher environment.

We also have the Big Issue which is a fantastic service giving people who are sleeping rough an opportunity to distribute a magazine in return for some profit.

One thing that I have noticed in particular is that the current donation system could potentially be improved by the latest innovations in the tech world by people with the skills who are willing to help.

Often these donations require a card/cash transaction, or to stop and buy a physical product. However, many people do not carry around with them cash, and a single donation per person means a more volatile income. In other industries, a subscription-based model is becoming the norm to paying for services. It provides a stability of income, and is less hassle for people to provide ongoing support. I believe that the donation world could vastly benefit from this solution.

There are roughly 2.2 million people in Brisbane. If only half of those people donated 1 dollar per week we would be looking at approximately 2.5 million dollars per month that would go towards helping provide a better life for people in need.....and thats just in Brisbane.

Let's make this process as easy as possible.

## The Solution

myCitySubscription will be an open-source software platform that provides a digital solution that could potentially be used by not-for-profits, not unlike the Big Issue or other such services, That would allow for end-to-end management of a subscription/donation process.

Essentially it will allow people to sign up to a subscription at either a named price or a flexible price (decided by the providing organization). This would entitle the subscriber to receive a digital asset that the organization provides, on an ongoing basis of the purchaser's choice or potentially a one of purchase if they choose. The people on the street would simply have a unique code that they either distribute via some sort of cards or hold up on a sign which is unique to them. This ensures the profits go to this individual to help them carve a better life, whatever that means to them.

After further disucssion and thought and some suggestions from others it was also decided to add a QR scanner functionality to the app. This helps prevent complete seperation of social, person to person, interaciton to help keep the experience more personal and real. Essentially to help prevent complete isolation of the people in need. Still providing and improved financial stream capability.

A subscriber/purchaser will log in to the site/app, enter the code or scan the QR code, add some basic details and the subscription will be active.

The administration of this software will be as automated as possible to decrease the need for labor costs to a not-for-profit.

## The Application

The platform will have:

- Organization / administrative platform with volunteer management
- Digital asset portal
- Public-facing website
- Mobile app with a volunteer management segment


### Public Interface

The public facing website will be a Ruby on Rails application. This will contain the main information for organisations looking to sign up and access to the administrative platform will be available from here. Organizations will sign up to use the product as a free subscription.

### Admin Portal

The administrative portal will be a volunteer and organization management tool. It will provide the ability to manage volunteers, capture data and visualize it, provide financial status information and contain access to the digital asset managment tool. 

### Digital Asset

The digital asset portal will be accessable from the rails administrative platform and will essentially be a Drupal8 CMS site, which will enable non technical users to easily customize a digital asset, that will ideally be used to provide in return for a subscription/donation. There will be a segment of the site that allows for the organization to add their own content to advertise who they are and what they are about.

### Mobile App

The mobile application will provide the heart of the myCitySubscription idea. It will enable users to quickly and with ease sign up to a subscription or purely donate with a code or by scanning a QR code with there phones. The application will be a React native application for ease of deployment to multiple platforms i.e IOS and Android.

---

## Tech stack

The Technologies used for the application will include the Above discussed including Ruby on Rails, Drupal8 and React native. The Goal at this stage is that the main API will run from the backend of the rails app. The mobile app will not store any data and will simply hit the rails API to access the main database connected to it, which will be a relational data model to be decided. The drupal8 instances will need their own data stores which will more than likley be MySql in drupal8 fashion. The apps will all communicate to share data as required via api requests.

Deployment will be on the cloud at AWS.

**This section will be thickened out in time**

## Contribute

Anyone who wants to contribute to this open source project is welcome. There is a basic contribute.md above in the files. But essentially there will be features and issues that need attention. Otherwise feel free to make recommendations or pull requests as you see fit and ill be more than happy to take a look.

Lets all contribute to a wholesome cause that could make a difference to any industry that needs support.

## Local environment

For best results setting up a local environment i highly reccommend sticking with the versions in the gemfile.

Install ruby 2.5.5 (I use rvm to manage my ruby versions for different projects)

```
rvm install 2.5.5
```
Make sure your using the correct Ruby verison and Run a bundle install

```
bundle install
```
There will be databases hooked up eventually but for now the contained sqlite is running until i get to it

The project is using webpacker for asset compilation which is a nice addition to Rails 6. You will more than likely need to do an install from yarn or npm in your project directory

```
npm install
```
Then setup webpacker
```
rails webpacker:install
```
If all went well you should be able to run the rails server followed by the webpacker dev server
```
rails s
```
In another terminal window
```
./bin/webpacker-dev-server
```

## feedback and thoughts :

Twitter @RoarzOnRails

Linkedin https://www.linkedin.com/in/roarzonrails/
