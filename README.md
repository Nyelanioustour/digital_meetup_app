# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    2.61
* System dependencies
    -faker gem
    -bcrypt
    -bulma
* Database creation
    run rails db:migrate
* Database initialization
    rails db:seed
* How to run the test suite
    we did a lot of testing throught the website.

About DigitalMeetUpApp

DigitalMeetupApp is an app that tries to serve as a middle man for people to make plans in this new quarantine life style of ours. Such as planing a movie night, a game night, or even just a group call. We felt making the first stage of DigitalMeetUp more movie focused would be a good way to showcase what we are aiming to do.

SetUp

-First you'll want to fork and clone the the repo.
-Second you'll need to run 'bundle install' & 'npm install bulma'
-Third you'll need to run rails db:migrate to create the database followed by rails db:seed to populate your new database with some seed data.
-Fourth once you have done these step run 'rails s' and go to 'http://localhost:3000/' to run the server and see if ever thing is working.

What features does the app have?

DigitalMeetUp these following things:
-a user can create an account, edit their account, and delete their account
-if a user is loged-in they can create a event listing.
    -edit their event listing.
    -delete their event listing.
-a user can also join someone elses events
    - a user can also leave comments on a event that consist of a  comment topic, the comment it's self, and a rating.
    - a user can also delete and edit past comments
-a user can go to their own profile
    -where they can look at the events they are planing to attend
    -where they can look at the events they are hosting
    -where they can look at the events they haven been to in the past
    -where they can look at the events they haven hosted in the past
    -look at there average rating 
    -how many events they have rated 
    -how many events they have been to
    -how many events they have hosted
    - you can also change your name, password, and edit you bio here
-you can also see a list of all the other users and the amount of events they are hosting.

