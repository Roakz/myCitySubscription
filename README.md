# myCitySubscription

![Logo](./assets/mycity.png)

A subscription based donation software for non for profits and the likes.

---

## Contents
1. The Problem
2. The Solution
3. The Application
  - Features
    - Public Interface
    - Administrative Interface
    - Content Portal
3. Tech Stack
  - Architecture
  - Data

  ---

  ## The Problem
  
  Modern society has become one hell of a beast to keep up with. The financial demands to keep a roof over our heads and a bed to sleep in at night are a privilege that only some of us are fortunate enough to have/afford. 

  When walking the streets of Brisbane city where I live I often see people sleeping rough. It's not an uncommon sight to see. We also have some pretty amazing Non for Profits doing what they can to provide support to people who don't share the luxuries of rooves over their heads or a warm bed to sleep in at night. Like the like of Orange SKy who provide laundry services for people doing it rough or Beddown providing temporary sleeping arrangements to give people a rest from a tougher environment.

  We also have the Big issue which is a fantastic service giving people who are sleeping rough an opportunity to distribute a magazine in return for some profit to the person.

  One thing that I have noticed in particular is that the current donation system could potentially be improved by the latest innovations in the tech world by people with the skills who are willing to help.

Often These donations require a card/cash transaction or to stop and buy a physical product. But what if it was even easier? Subscription-based services are becoming a common and easy way to approach the offering of most services digitally nowadays and I believe that the donation world should be no different. 

These small barriers in the hustle and bustle of a busy city would potentially decrease the amount of support that we as a modern society can offer to those in need.

If we look at the big picture there are roughly 2.2 million people in Brisbane. If only half of those people donated 1 dollar per week we would be looking at approximately 2.5 million dollars per month that would go towards helping provide a better life for people in need.....and thats just in Brisbane.

Let's make this process as easy as possible.

## The solution

myCitySubscription will be an open-source software platform that provides a digital solution that could potentially be used by non for profits, not unlike the Big issue or other such services, That would allow for end to end management of a subscription/donation process.

Essentially it will allow people to sign up to a subscription at either a named price or a flexible price(decided by the providing organization). This would entitle the subscriber to receive a digital asset that the organization provides. This will be on an ongoing basis of the purchaser's choice or potentially a one of purchase if they choose. The men and women on the street would simply have a unique code that they either distribute via some sought of cards or hold up on a sign which is unique to them. This ensures the profits go to this individual to help them carve a better life. Whatever that means to them.

As a subscriber/Purchaser, I simply log in to the site/app enter the code and some basic details and my subscription is active.

The administration of this software will be as automated as possible to decrease the need for labor costs to a non-for-profit.

The platform will have:

- Organization / administrative platform
- Public-facing website and mobile app
- Digital asset platform

---

## Tech stack 

myCitySubscription will have a Ruby backend and a javascript frontend.

 The backend API will be built out as a Sinatra application. This choice is due to the quick build times and ease of the hight level Ruby language coupled with the non oppinionated framework that sinatra provides. This will help avoid the unneccesary weight of a full Rails API aswell as the heavy oppinionation that it entails. Thi allows us to strcture the API as we choose and use middlewares of choice aswell as implement other application functionailty as we choose. There will be three front ends that interact with the sinatra API. 

The main administration interface and the Pulic facing responsive website will be built on React, a component based Javascript library. React provides a robust library of resources for building an interactive UI with the ability to only import what is needed for the job. React is extremley popular in the development community due to its ease of use and the ability to re-use components for a dry and lightweight codebase. Its ability to use State within components and the newley introduced event hooks to control the component lifecycle ensure a quik and easy to develop iteractive web app. Furthemore the way that React segregates its enpoints in a fashion that maintains a "Static" app makes it extremley easy to deploy and extremley quik to use and load. 

The mobile app segment of the application will be built with React native. React native is a unique native application famework that essentially allows developers to create native aplications written in javascript. React Native lets you create truly native apps and doesn't compromise on your users' experience. It provides a core set of platform agnostic native components like View, Text, and Image that map directly to the platform’s native UI building blocks.

Essentially there will be three font ends to this application that all interact in one way or another with the Sinatra API to perform CRUD actions and make relevant requests for data.

The application will maintain overall an MVC architectural pattern.

## More documentation coming soon!


## feedback and thoughts : 

Twitter @RoarzOnRails

Linkedin https://www.linkedin.com/in/roarzonrails/
